module models.emails.entities.opened;

@safe:
import models.emails;

class DEMLOpened : DEntity {
  mixin(EntityThis!("EMLOpened"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "interactionId": UUIDAttribute, // Unique identifier of the interaction."]),
        "contactId": UUIDAttribute, // Contact ID"]),
        "accountId": UUIDAttribute, // Account ID"]),
        "marketingEmailId": UUIDAttribute, // Message"]),
        "customerJourneyId": UUIDAttribute, // Customer Journey ID"]),
        "messageId": UUIDAttribute, // Message ID"]),
        "sendingId": UUIDAttribute, // Sending ID"]),
        "emailDomain": StringAttribute, // Email domain"]),
        "emailAddressUsed": StringAttribute, // Email address used"]),
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID"]),
        "interactionType": StringAttribute, // Interaction type"]),
        "usageType": StringAttribute, // Usage type"]),
        "organizationId": UUIDAttribute, // Organization ID"]),
        "timestamp": StringAttribute, // Timestamp"]),
        "visitorId": UUIDAttribute, // Visitor ID"]),
        "sessionId": UUIDAttribute, // Session ID"]),
        "countryIsoCode": IntegerAttribute, //Country ISO code"]),
        "state": StringAttribute, // State"]),
        "city": StringAttribute, // City"]),
        "postalCode": IntegerAttribute, //Postal code"]),
        "browserId": UUIDAttribute, // Browser ID"]),
        "browserVersion": StringAttribute, // Browser version"]),
        "operatingSystemId": UUIDAttribute, // Operating system ID"]),
        "operatingSystemVersion": StringAttribute, // Operating system version"]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": StringAttribute, // Visitor anonymous status"]),
        "leadId": UUIDAttribute, // Lead ID"]),
      ])
      .registerPath("email_opened");
  }
}
mixin(EntityCalls!("EMLOpened"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLOpened);
  
  auto entity = EMLOpened;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}