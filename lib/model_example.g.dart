// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_example.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetExampleModelCollection on Isar {
  IsarCollection<ExampleModel> get exampleModels => this.collection();
}

const ExampleModelSchema = CollectionSchema(
  name: r'ExampleModel',
  id: -1090033989108964644,
  properties: {
    r'embeddedModel': PropertySchema(
      id: 0,
      name: r'embeddedModel',
      type: IsarType.object,
      target: r'EmbeddedModel',
    )
  },
  estimateSize: _exampleModelEstimateSize,
  serialize: _exampleModelSerialize,
  deserialize: _exampleModelDeserialize,
  deserializeProp: _exampleModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'EmbeddedModel': EmbeddedModelSchema},
  getId: _exampleModelGetId,
  getLinks: _exampleModelGetLinks,
  attach: _exampleModelAttach,
  version: '3.0.5',
);

int _exampleModelEstimateSize(
  ExampleModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      EmbeddedModelSchema.estimateSize(
          object.embeddedModel, allOffsets[EmbeddedModel]!, allOffsets);
  return bytesCount;
}

void _exampleModelSerialize(
  ExampleModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<EmbeddedModel>(
    offsets[0],
    allOffsets,
    EmbeddedModelSchema.serialize,
    object.embeddedModel,
  );
}

ExampleModel _exampleModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ExampleModel(
    embeddedModel: reader.readObjectOrNull<EmbeddedModel>(
          offsets[0],
          EmbeddedModelSchema.deserialize,
          allOffsets,
        ) ??
        EmbeddedModel(),
    id: id,
  );
  return object;
}

P _exampleModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<EmbeddedModel>(
            offset,
            EmbeddedModelSchema.deserialize,
            allOffsets,
          ) ??
          EmbeddedModel()) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _exampleModelGetId(ExampleModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _exampleModelGetLinks(ExampleModel object) {
  return [];
}

void _exampleModelAttach(
    IsarCollection<dynamic> col, Id id, ExampleModel object) {}

extension ExampleModelQueryWhereSort
    on QueryBuilder<ExampleModel, ExampleModel, QWhere> {
  QueryBuilder<ExampleModel, ExampleModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExampleModelQueryWhere
    on QueryBuilder<ExampleModel, ExampleModel, QWhereClause> {
  QueryBuilder<ExampleModel, ExampleModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExampleModelQueryFilter
    on QueryBuilder<ExampleModel, ExampleModel, QFilterCondition> {
  QueryBuilder<ExampleModel, ExampleModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ExampleModelQueryObject
    on QueryBuilder<ExampleModel, ExampleModel, QFilterCondition> {
  QueryBuilder<ExampleModel, ExampleModel, QAfterFilterCondition> embeddedModel(
      FilterQuery<EmbeddedModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'embeddedModel');
    });
  }
}

extension ExampleModelQueryLinks
    on QueryBuilder<ExampleModel, ExampleModel, QFilterCondition> {}

extension ExampleModelQuerySortBy
    on QueryBuilder<ExampleModel, ExampleModel, QSortBy> {}

extension ExampleModelQuerySortThenBy
    on QueryBuilder<ExampleModel, ExampleModel, QSortThenBy> {
  QueryBuilder<ExampleModel, ExampleModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ExampleModel, ExampleModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ExampleModelQueryWhereDistinct
    on QueryBuilder<ExampleModel, ExampleModel, QDistinct> {}

extension ExampleModelQueryProperty
    on QueryBuilder<ExampleModel, ExampleModel, QQueryProperty> {
  QueryBuilder<ExampleModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ExampleModel, EmbeddedModel, QQueryOperations>
      embeddedModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'embeddedModel');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const EmbeddedModelSchema = Schema(
  name: r'EmbeddedModel',
  id: -2574665920439895016,
  properties: {
    r'a': PropertySchema(
      id: 0,
      name: r'a',
      type: IsarType.long,
    ),
    r'b': PropertySchema(
      id: 1,
      name: r'b',
      type: IsarType.long,
    ),
    r'c': PropertySchema(
      id: 2,
      name: r'c',
      type: IsarType.long,
    )
  },
  estimateSize: _embeddedModelEstimateSize,
  serialize: _embeddedModelSerialize,
  deserialize: _embeddedModelDeserialize,
  deserializeProp: _embeddedModelDeserializeProp,
);

int _embeddedModelEstimateSize(
  EmbeddedModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _embeddedModelSerialize(
  EmbeddedModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.a);
  writer.writeLong(offsets[1], object.b);
  writer.writeLong(offsets[2], object.c);
}

EmbeddedModel _embeddedModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EmbeddedModel(
    a: reader.readLongOrNull(offsets[0]) ?? 0,
    b: reader.readLongOrNull(offsets[1]) ?? 0,
    c: reader.readLongOrNull(offsets[2]) ?? 0,
  );
  return object;
}

P _embeddedModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EmbeddedModelQueryFilter
    on QueryBuilder<EmbeddedModel, EmbeddedModel, QFilterCondition> {
  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> aEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'a',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition>
      aGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'a',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> aLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'a',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> aBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'a',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> bEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'b',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition>
      bGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'b',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> bLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'b',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> bBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'b',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> cEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition>
      cGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> cLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'c',
        value: value,
      ));
    });
  }

  QueryBuilder<EmbeddedModel, EmbeddedModel, QAfterFilterCondition> cBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'c',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension EmbeddedModelQueryObject
    on QueryBuilder<EmbeddedModel, EmbeddedModel, QFilterCondition> {}
