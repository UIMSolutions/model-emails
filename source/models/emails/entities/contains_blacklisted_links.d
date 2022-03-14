module models.emails.contains_blacklisted_links;

@safe:
import models.emails;

class DEMLContainsBlacklistedLinks : DOOPEntity {
  this() { super();
    this.attributes([
      "interactionId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the interaction."]),
      "contactId": OOPAttributeUUID.descriptions(["en":"Contact ID"]),
      "accountId": OOPAttributeUUID.descriptions(["en":"Account ID"]),
      "messageId": OOPAttributeUUID.descriptions(["en":"Message ID"]),
      "customerJourneyId": OOPAttributeUUID.descriptions(["en":"Customer Journey ID"]),
      "organizationId": OOPAttributeUUID.descriptions(["en":"Organization ID"]),
      "sendingId": OOPAttributeUUID.descriptions(["en":"Sending ID"]),
      "blacklistedLink": OOPAttributeString.descriptions(["en":"Blacklisted link"]),
      "customerJourneyIterationId": OOPAttributeUUID.descriptions(["en":"Customer journey iteration ID"]),
      "usageType": OOPAttributeString.descriptions(["en":"Usage type"]),
      "interactionType": OOPAttributeString.descriptions(["en":"Interaction type"]),
      "timestamp": OOPAttributeString.descriptions(["en":"Timestamp"]),
      "activityId": OOPAttributeUUID.descriptions(["en":"Activity ID"]),
    ]);
  }

  override string entityClass() { return "EMLContainsBlacklistedLinks"; }
  override string entityClasses() { return "EMLContainsBlacklistedLinkss"; }

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

}
auto EMLContainsBlacklistedLinks() { return new DEMLContainsBlacklistedLinks; } 
auto EMLContainsBlacklistedLinks(Json json) { return new DEMLContainsBlacklistedLinks(json); } 

unittest {
  version(uim_entities) {
    assert(EMLContainsBlacklistedLinks);
  
  auto entity = EMLContainsBlacklistedLinks;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}