import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:http/http.dart' as http;
import 'package:sqfentity_gen/sqfentity_gen.dart';

part 'model.g.dart';

const tableAdminUnit = SqfEntityTable(
    tableName: 'AdministrativeUnit',
    primaryKeyName: 'id',
    primaryKeyType: PrimaryKeyType.text,
    modelName: null,
    fields: [SqfEntityField('name', DbType.text, isIndex: true)]);

@SqfEntityBuilder(myDbModel)
const myDbModel = SqfEntityModel(
    modelName: 'MyDbModel',
    databaseName: 'sample.sqlite',
    password: '',
    databaseTables: [tableAdminUnit]);
