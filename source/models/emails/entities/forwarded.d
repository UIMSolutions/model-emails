module models.emails.forwarded;

@safe:
import models.emails;

class DAPLEmailForwarded : DOOPEntity {
  this() { super();
    this.attributes([
      "interactionId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the interaction."]),
      "messageId": OOPAttributeUUID.descriptions(["en":"Message ID"]),
      "customerJourneyId": OOPAttributeUUID.descriptions(["en":"Customer Journey ID"]),
      "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Contact ID"]),
      "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Account ID"]),
      "sendingId": OOPAttributeUUID.descriptions(["en":"Sending ID"]),
      "emailDomain": OOPAttributeString.descriptions(["en":"Email domain"]),
      "emailAddressUsed": OOPAttributeString.descriptions(["en":"Email address used"]),
      "customerJourneyIterationId": OOPAttributeUUID.descriptions(["en":"Customer journey iteration ID"]),
      "usageType": OOPAttributeString.descriptions(["en":"Usage type"]),
      "secondaryRecipientProfileId": OOPAttributeUUID.descriptions(["en":"Secondary recipient profile ID"]),
      "interactionType": OOPAttributeString.descriptions(["en":"Interaction type"]),
      "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Organization ID"]),
      "timestamp": OOPAttributeString.descriptions(["en":"Timestamp"]),
      "visitorId": OOPAttributeUUID.descriptions(["en":"Visitor ID"]),
      "sessionId": OOPAttributeUUID.descriptions(["en":"Session ID"]),
      "countryIsoCode": OOPAttributeInteger.descriptions(["en":"Country ISO code"]),
      "state": OOPAttributeString.descriptions(["en":"State"]),
      "city": OOPAttributeString.descriptions(["en":"City"]),
      "postalCode": OOPAttributeInteger.descriptions(["en":"Postal code"]),
      "browserId": OOPAttributeUUID.descriptions(["en":"Browser ID"]),
      "browserVersion": OOPAttributeString.descriptions(["en":"Browser version"]),
      "operatingSystemId": OOPAttributeUUID.descriptions(["en":"Operating system ID"]),
      "operatingSystemVersion": OOPAttributeString.descriptions(["en":"Operating system version"]),
      "searchPhrase": OOPAttributeString.descriptions(["en":"Search phrase"]),
      "searchEngineName": OOPAttributeString.descriptions(["en":"Search engine name"]),
      "visitorReturningStatus": OOPAttributeString.descriptions(["en":"Visitor returning status"]),
      "visitDuration": OOPAttributeString.descriptions(["en":"Visit duration"]),
      "formSubmissionId": OOPAttributeUUID.descriptions(["en":"Form submission ID"]),
      "visitorAnonymousStatus": OOPAttributeString.descriptions(["en":"Visitor anonymous status"]),
      "leadId": OOPAttributeUUID.descriptions(["en":"Lead ID"]),
    ]);
  }

  override string entityClass() { return "aplEmailForwarded"; }
  override string entityClasses() { return "aplEmailForwardeds"; }

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
auto APLEmailForwarded() { return new DAPLEmailForwarded; } 
auto APLEmailForwarded(Json json) { return new DAPLEmailForwarded(json); } 

unittest {
  version(uim_entities) {
    assert(APLEmailForwarded);
  
  auto entity = APLEmailForwarded;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}