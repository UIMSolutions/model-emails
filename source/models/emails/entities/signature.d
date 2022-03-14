module models.emails.signature;

@safe:
import models.emails;

// Signature for email message
class DEMLSignature : DOOPEntity {
  this() { super();
    this.attributes([
      "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier of the business unit that owns the email signature."]),
      "isPersonal": OOPAttributeBoolean.descriptions(["en":"Information about whether the email signature is personal or is available to all users."]),
      "mimeType": OOPAttributeString.descriptions(["en":"MIME type of the email signature."]),
      "body": OOPAttributeString.descriptions(["en":"Body text of the email signature."]),
      "title": OOPAttributeString.descriptions(["en":"Title of the email signature."]),
      "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user who owns the email signature."]),
      "presentationXml": OOPAttributeString.descriptions(["en":"XML data for the body of the email signature."]),
      "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
      "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
      "generationTypeCode": OOPAttributeInteger.descriptions(["en":"For internal use only."]),
      "languageCode": OOPAttributeInteger.descriptions(["en":"Language of the email signature."]),
      "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
      "overwriteTime": OOPAttributeTime.descriptions(["en":"For internal use only."]),
      "componentState": OOPAttributeString.descriptions(["en":"For internal use only."]),
      "componentState_display": OOPAttributeString.descriptions(["en":""]),
      "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the email signature."]),
      "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the delegate user who last modified the email signature."]),
      "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier of the team who owns the email signature."]),
      "isCustomizable": OOPAttributeBoolean.descriptions(["en":"Information that specifies whether this component can be customized."]),
      "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
      "isDefault": OOPAttributeBoolean.descriptions(["en":"Information that specifies whether the email signature is default to the user."]),
    ]);
  }

  override string entityClass() { return "EMLSignature"; }
  override string entityClasses() { return "EMLSignatures"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }
}
auto EMLSignature() { return new DEMLSignature; } 
auto EMLSignature(Json json) { return new DEMLSignature(json); } 

unittest {
  version(uim_entities) {
    assert(EMLSignature);
  
  auto entity = EMLSignature;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}