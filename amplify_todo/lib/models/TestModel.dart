/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the TestModel type in your schema. */
@immutable
class TestModel extends Model {
  static const classType = const _TestModelModelType();
  final String id;
  final String? _name;
  final String? _description;
  final bool? _isComplete;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  String? get description {
    return _description;
  }
  
  bool get isComplete {
    try {
      return _isComplete!;
    } catch(e) {
      throw new DataStoreException(DataStoreExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage, recoverySuggestion: DataStoreExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion, underlyingException: e.toString());
    }
  }
  
  const TestModel._internal({required this.id, required name, description, required isComplete}): _name = name, _description = description, _isComplete = isComplete;
  
  factory TestModel({String? id, required String name, String? description, required bool isComplete}) {
    return TestModel._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      description: description,
      isComplete: isComplete);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestModel &&
      id == other.id &&
      _name == other._name &&
      _description == other._description &&
      _isComplete == other._isComplete;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("TestModel {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("isComplete=" + (_isComplete != null ? _isComplete!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  TestModel copyWith({String? id, String? name, String? description, bool? isComplete}) {
    return TestModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      isComplete: isComplete ?? this.isComplete);
  }
  
  TestModel.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _description = json['description'],
      _isComplete = json['isComplete'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'description': _description, 'isComplete': _isComplete
  };

  static final QueryField ID = QueryField(fieldName: "testModel.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField DESCRIPTION = QueryField(fieldName: "description");
  static final QueryField ISCOMPLETE = QueryField(fieldName: "isComplete");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestModel";
    modelSchemaDefinition.pluralName = "TestModels";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: TestModel.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: TestModel.DESCRIPTION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: TestModel.ISCOMPLETE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
    ));
  });
}

class _TestModelModelType extends ModelType<TestModel> {
  const _TestModelModelType();
  
  @override
  TestModel fromJson(Map<String, dynamic> jsonData) {
    return TestModel.fromJson(jsonData);
  }
}