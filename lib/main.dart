import 'package:flutter/material.dart';
import 'package:flutter_graphql_test_2/service/graphql_manager.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'query/continents.graphql.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String query = """
    query {
      continents {
        code
        name
      }
    }
  """;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: GraphQLManager.getClient(HttpLink('https://countries.trevorblades.com/graphql')),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Continents Launches'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(query),
          ),
          builder: (result, {refetch, fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final parsedData = Query$fetchContinents.fromJson(result.data as Map<String, dynamic>);
            final continents = parsedData.continents;

            return ListView.builder(
              itemCount: continents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(continents[index].name),
                  subtitle: Text(continents[index].code),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
