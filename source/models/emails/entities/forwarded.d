module models.emails.entities.forwarded;

@safe:
import models.emails;

class DEmailForwardedENtity : DOOPEntity {
  mixin(EntityThis!("EmailForwardedENtity"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        ContactIdAttributeClass, // Contact ID
        AccountIdAttributeClass, // Account ID
        OrganizationIdAttributeClass, // Organization ID
      ])
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction.
        "messageId": UUIDAttributeClass, // Message ID
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID
        "sendingId": UUIDAttributeClass, // Sending ID
        "emailDomain": StringAttributeClass, // Email domain
        "emailAddressUsed": StringAttributeClass, // Email address used
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID
        "usageType": StringAttributeClass, // Usage type
        "secondaryRecipientProfileId": UUIDAttributeClass, // Secondary recipient profile ID
        "interactionType": StringAttributeClass, // Interaction type
        "timestamp": StringAttributeClass, // Timestamp
        "visitorId": UUIDAttributeClass, // Visitor ID
        "sessionId": UUIDAttributeClass, // Session ID
        "countryIsoCode": IntegerAttributeClass, //Country ISO code
        "state": StringAttributeClass, // State
        "city": StringAttributeClass, // City
        "postalCode": IntegerAttributeClass, //Postal code
        "browserId": UUIDAttributeClass, // Browser ID
        "browserVersion": StringAttributeClass, // Browser version
        "operatingSystemId": UUIDAttributeClass, // Operating system ID
        "operatingSystemVersion": StringAttributeClass, // Operating system version
        "searchPhrase": StringAttributeClass, // Search phrase
        "searchEngineName": StringAttributeClass, // Search engine name
        "visitorReturningStatus": StringAttributeClass, // Visitor returning status
        "visitDuration": StringAttributeClass, // Visit duration
        "formSubmissionId": UUIDAttributeClass, // Form submission ID
        "visitorAnonymousStatus": StringAttributeClass, // Visitor anonymous status
        "leadId": UUIDAttributeClass, // Lead ID
      ])
      .registerPath("email_forwarded");
  }
}
mixin(EntityCalls!("EmailForwardedENtity"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EmailForwardedENtity);
  
  auto entity = EmailForwardedENtity;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}