import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'package:letamaji/models/transaction.dart';
import 'package:letamaji/models/user.dart';

Future<Transaction> fetchTransaction(int id) async {
  final response =
      await http.get('http://10.0.2.2:3000/api/v1/transactions/$id');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return Transaction.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load Transaction');
  }
}

List<Transaction> parseTransactions(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Transaction>((json) => Transaction.fromJson(json)).toList();
}

Future<List<Transaction>> fetchTransactions() async {
  final response = await http.get('http://10.0.2.2:3000/api/v1/transactions');

  if (response.statusCode == 200) {
    return compute(parseTransactions, response.body); // much better than parseTransactions(response.body);
  } else {
    throw Exception('Failed to load Transaction');
  }
}

Future<Transaction> createTransaction(int id, String body) async {
  Map<String, String> headers = {"Content-type": "application/json"};

  final response =
      await http.post('http://10.0.2.2:3000/api/v1/transactions/$id', headers: headers, body: body);

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return Transaction.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load Transaction');
  }
}

Future<Transaction> updateTransaction(int id, String body) async {
  Map<String, String> headers = {"Content-type": "application/json"};

  final response =
      await http.put('http://10.0.2.2:3000/api/v1/transactions/$id', headers: headers, body: body);

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return Transaction.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load Transaction');
  }
}

Future<List<Transaction>> deleteTransaction(int id) async {
  final response =
      await http.delete('http://10.0.2.2:3000/api/v1/transactions/$id');

  if (response.statusCode == 204) {
    // If server returns an OK response, parse the JSON.
    return compute(parseTransactions, response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load Transaction');
  }
}

Future<User> fetchUser(int id) async {
  final response =
      await http.get('http://10.0.2.2:3000/api/v1/users/$id');

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return User.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load User');
  }
}

List<User> parseUsers(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<User>((json) => User.fromJson(json)).toList();
}

Future<List<User>> fetchUsers() async {
  final response = await http.get('http://10.0.2.2:3000/api/v1/users');

  if (response.statusCode == 200) {
    return compute(parseUsers, response.body); // much better than parseUser(response.body);
  } else {
    throw Exception('Failed to load User');
  }
}

Future<User> createUser(int id, String body) async {
  Map<String, String> headers = {"Content-type": "application/json"};

  final response =
      await http.post('http://10.0.2.2:3000/api/v1/users/$id', headers: headers, body: body);

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return User.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load User');
  }
}

Future<User> updateUser(int id, String body) async {
  Map<String, String> headers = {"Content-type": "application/json"};

  final response =
      await http.put('http://10.0.2.2:3000/api/v1/users/$id', headers: headers, body: body);

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return User.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load User');
  }
}

Future<List<User>> deleteUser(int id) async {
  final response =
      await http.delete('http://10.0.2.2:3000/api/v1/users/$id');

  if (response.statusCode == 204) {
    // If server returns an OK response, parse the JSON.
    return compute(parseUsers, response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load User');
  }
}

