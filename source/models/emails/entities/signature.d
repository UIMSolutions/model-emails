module models.emails.entities.signature;

@safe:
import models.emails;

// Signature for email message
class DEMLSignature : DEntity {
  mixin(EntityThis!("EMLSignature"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier of the business unit that owns the email signature."]),
        "isPersonal": BooleanAttribute, // Information about whether the email signature is personal or is available to all users."]),
        "mimeType": StringAttribute, // MIME type of the email signature."]),
        "body": StringAttribute, // Body text of the email signature."]),
        "title": StringAttribute, // Title of the email signature."]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user who owns the email signature."]),
        "presentationXml": StringAttribute, // XML data for the body of the email signature."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "generationTypeCode": IntegerAttribute, //For internal use only."]),
        "languageCode": IntegerAttribute, //Language of the email signature."]),
        "importSequenceNumber": NumberAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "overwriteTime": TimeAttribute, // For internal use only."]),
        "componentState": StringAttribute, // For internal use only."]),
        "componentState_display": StringAttribute, //
        "createdOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who created the email signature."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Unique identifier of the delegate user who last modified the email signature."]),
        "owningTeamId": UUIDAttribute, //Unique identifier of the team who owns the email signature."]),
        "isCustomizable": BooleanAttribute, // Information that specifies whether this component can be customized."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "isDefault": BooleanAttribute, // Information that specifies whether the email signature is default to the user."]),
      ])
      .registerPath("email_signatures");
  }
}
mixin(EntityCalls!("EMLSignature"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLSignature);
  
  auto entity = EMLSignature;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}