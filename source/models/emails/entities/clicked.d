module models.emails.entities.clicked;

@safe:
import models.emails;

class DEMLClicked : DOOPEntity {
  mixin(EntityThis!("EMLClicked"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": UUIDAttributeClass, // Contact ID"]),
        "accountId": UUIDAttributeClass, // Account ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "linkId": UUIDAttributeClass, // Link ID"]),
        "linkFriendlyName": StringAttributeClass, // Link friendly name"]),
        "originalLink": StringAttributeClass, // Original link"]),
        "originalUrl": OOPUrlAttribute.descriptions(["en":"Original URL"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "emailDomain": StringAttributeClass, // Email domain"]),
        "emailAddressUsed": StringAttributeClass, // Email address used"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "organizationId": UUIDAttributeClass, // Organization ID"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "visitorId": UUIDAttributeClass, // Visitor ID"]),
        "sessionId": UUIDAttributeClass, // Session ID"]),
        "countryIsoCode": IntegerAttributeClass, //Country ISO code"]),
        "state": StringAttributeClass, // State"]),
        "city": StringAttributeClass, // City"]),
        "postalCode": IntegerAttributeClass, //Postal code"]),
        "browserId": UUIDAttributeClass, // Browser ID"]),
        "browserVersion": StringAttributeClass, // Browser version"]),
        "operatingSystemId": UUIDAttributeClass, // Operating system ID"]),
        "operatingSystemVersion": StringAttributeClass, // Operating system version"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": StringAttributeClass, // Visitor anonymous status"]),
        "leadId": UUIDAttributeClass, // Lead ID"]),
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