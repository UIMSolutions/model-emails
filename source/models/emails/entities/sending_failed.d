module models.emails.sending_failed;

@safe:
import models.emails;

class DAPLEmailSendingFailed : DOOPEntity {
  this() { super();
    this.attributes([
      "interactionId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the interaction."]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Contact ID"]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Account ID"]),
      "messageId": OOPAttributeUUID.descriptions(["en":"Message ID"]),
      "customerJourneyId": OOPAttributeUUID.descriptions(["en":"Customer Journey ID"]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Organization ID"]),
      "sendingId": OOPAttributeUUID.descriptions(["en":"Sending ID"]),
      "customerJourneyIterationId": OOPAttributeUUID.descriptions(["en":"Customer journey iteration ID"]),
      "usageType": OOPAttributeString.descriptions(["en":"Usage type"]),
      "interactionType": OOPAttributeString.descriptions(["en":"Interaction type"]),
      "timestamp": OOPAttributeString.descriptions(["en":"Timestamp"]),
    ]);
  }

  override string entityClass() { return "aplEmailSendingFailed"; }
  override string entityClasses() { return "aplEmailSendingFaileds"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));

}
auto APLEmailSendingFailed() { return new DAPLEmailSendingFailed; } 
auto APLEmailSendingFailed(Json json) { return new DAPLEmailSendingFailed(json); } 

unittest {
  version(uim_entities) {
    assert(APLEmailSendingFailed);
  auto entity = APLEmailSendingFailed;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}