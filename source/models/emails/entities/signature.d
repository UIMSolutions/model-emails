module models.emails.entities.signature;

@safe:
import models.emails;

// Signature for email message
class DEMLSignature : DOOPEntity {
  mixin(EntityThis!("EMLSignature"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier of the business unit that owns the email signature."]),
        "isPersonal": BooleanAttributeClass, // Information about whether the email signature is personal or is available to all users."]),
        "mimeType": StringAttributeClass, // MIME type of the email signature."]),
        "body": StringAttributeClass, // Body text of the email signature."]),
        "title": StringAttributeClass, // Title of the email signature."]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user who owns the email signature."]),
        "presentationXml": StringAttributeClass, // XML data for the body of the email signature."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "generationTypeCode": OOPIntegerAttribute.descriptions(["en":"For internal use only."]),
        "languageCode": OOPIntegerAttribute.descriptions(["en":"Language of the email signature."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "overwriteTime": TimeAttributeClass, // For internal use only."]),
        "componentState": StringAttributeClass, // For internal use only."]),
        "componentState_display": StringAttributeClass, //
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the email signature."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the email signature."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier of the team who owns the email signature."]),
        "isCustomizable": BooleanAttributeClass, // Information that specifies whether this component can be customized."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "isDefault": BooleanAttributeClass, // Information that specifies whether the email signature is default to the user."]),
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