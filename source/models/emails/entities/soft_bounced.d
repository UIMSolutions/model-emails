module models.emails.soft_bounced;

@safe:
import models.emails;

class DAPLEmailSoftBounced: DOOPEntity {
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
      "bounceCategory": OOPAttributeString.descriptions(["en":"Bounce category"]),
      "remoteBounce": OOPAttributeString.descriptions(["en":"Remote bounce"]),
      "activityId": OOPAttributeLink("aplActivity").descriptions(["en":"Activity ID"]),
    ]);
  }

  override string entityClass() { return "aplEmailSoftBounced"; }
  override string entityClasses() { return "aplEmailSoftBounceds"; }

  this(UUID myId) { 
    this(); this.id(myId); }
  this(string myName) { 
    this(); this.name(myName); }
  this(UUID myId, string myName) { 
    this(); this.id(myId).name(myName); }
  this(Json aJson) { 
    this(); this.fromJson(aJson); }

  // mixin(GetEntity!("account", "accountId", "APLAccount"));
  // mixin(GetEntity!("activity", "activityId", "APLActivity"));
  // mixin(GetEntity!("contact", "contactId", "APLContact"));
  // mixin(GetEntity!("organization", "organizationId", "APLOrganization"));

}
auto APLEmailSoftBounced() { return new DAPLEmailSoftBounced; } 
auto APLEmailSoftBounced(Json json) { return new DAPLEmailSoftBounced(json); } 

unittest {
  version(uim_entities) {
    assert(APLEmailSoftBounced);
  
  auto entity = APLEmailSoftBounced;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}