module models.emails.subscription_submit;

@safe:
import models.emails;

class DAPLEmailSubscriptionSubmit : DOOPEntity {
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
      "countryIsoCode": OOPAttributeInteger.descriptions(["en":"Country ISO code"]),
      "state": OOPAttributeString.descriptions(["en":"State"]),
      "city": OOPAttributeString.descriptions(["en":"City"]),
      "postalCode": OOPAttributeInteger.descriptions(["en":"Postal code"]),
      "browserId": OOPAttributeUUID.descriptions(["en":"Browser ID"]),
      "browserVersion": OOPAttributeString.descriptions(["en":"Browser version"]),
      "operatingSystemId": OOPAttributeUUID.descriptions(["en":"Operating system ID"]),
      "operatingSystemVersion": OOPAttributeString.descriptions(["en":"Operating system version"]),
      "deviceType": OOPAttributeString.descriptions(["en":"Device type"]),
      "deviceBrand": OOPAttributeString.descriptions(["en":"Device brand"]),
      "deviceModel": OOPAttributeString.descriptions(["en":"Device model"]),
    ]);
  }

  override string entityClass() { return "aplEmailSubscriptionSubmit"; }
  override string entityClasses() { return "aplEmailSubscriptionSubmits"; }

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
auto APLEmailSubscriptionSubmit() { return new DAPLEmailSubscriptionSubmit; } 
auto APLEmailSubscriptionSubmit(Json json) { return new DAPLEmailSubscriptionSubmit(json); } 

unittest {
  version(uim_entities) {
    assert(APLEmailSubscriptionSubmit);
  
  auto entity = APLEmailSubscriptionSubmit;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}