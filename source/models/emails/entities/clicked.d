module models.emails.entities.clicked;

@safe:
import models.emails;

class DEMLClicked : DEntity {
  mixin(EntityThis!("EMLClicked"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "interactionId": UUIDAttribute, // Unique identifier of the interaction."]),
        "contactId": UUIDAttribute, // Contact ID"]),
        "accountId": UUIDAttribute, // Account ID"]),
        "messageId": UUIDAttribute, // Message ID"]),
        "customerJourneyId": UUIDAttribute, // Customer Journey ID"]),
        "linkId": UUIDAttribute, // Link ID"]),
        "linkFriendlyName": StringAttribute, // Link friendly name"]),
        "originalLink": StringAttribute, // Original link"]),
        "originalUrl": UrlAttribute, // Original URL"]),
        "sendingId": UUIDAttribute, // Sending ID"]),
        "emailDomain": StringAttribute, // Email domain"]),
        "emailAddressUsed": StringAttribute, // Email address used"]),
        "interactionType": StringAttribute, // Interaction type"]),
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
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID"]),
        "usageType": StringAttribute, // Usage type"]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": StringAttribute, // Visitor anonymous status"]),
        "leadId": UUIDAttribute, // Lead ID"]),
      ])
      .registerPath("email_clicked");
  }
}
mixin(EntityCalls!("EMLClicked"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLClicked);
  
  auto entity = EMLClicked;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}