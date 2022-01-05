module models.emails.feedback_loop;

@safe:
import models.emails;

class DAPLEmailFeedbackLoop : DOOPEntity {
  this() { super();
    this.attributes([
      "interactionId": OOPAttributeString.descriptions(["en":"Unique identifier of the interaction."]),
      "contactId": OOPAttributeString.descriptions(["en":"Contact ID"]),
      "accountId": OOPAttributeString.descriptions(["en":"Account ID"]),
      "messageId": OOPAttributeString.descriptions(["en":"Message ID"]),
      "customerJourneyId": OOPAttributeString.descriptions(["en":"Customer Journey ID"]),
      "organizationId": OOPAttributeString.descriptions(["en":"Organization ID"]),
      "sendingId": OOPAttributeString.descriptions(["en":"Sending ID"]),
      "customerJourneyIterationId": OOPAttributeString.descriptions(["en":"Customer journey iteration ID"]),
      "usageType": OOPAttributeString.descriptions(["en":"Usage type"]),
      "interactionType": OOPAttributeString.descriptions(["en":"Interaction type"]),
      "timestamp": OOPAttributeString.descriptions(["en":"Timestamp"]),
    ]);
  }

  override string entityClass() { return "aplEmailFeedbackLoop"; }
  override string entityClasses() { return "aplEmailFeedbackLoops"; }

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
auto APLEmailFeedbackLoop() { return new DAPLEmailFeedbackLoop; } 
auto APLEmailFeedbackLoop(Json json) { return new DAPLEmailFeedbackLoop(json); } 

unittest {
  version(uim_entities) {
    assert(APLEmailFeedbackLoop);
  
  auto entity = APLEmailFeedbackLoop;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}