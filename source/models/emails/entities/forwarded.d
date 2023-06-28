module models.emails.entities.forwarded;

@safe:
import models.emails;

class DEmailForwardedENtity : DEntity {
  mixin(EntityThis!("EmailForwardedENtity"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        ContactIdAttribute, // Contact ID
        AccountIdAttribute, // Account ID
        OrganizationIdAttribute, // Organization ID
      ])
      .addValues([
        "interactionId": UUIDAttribute, // Unique identifier of the interaction.
        "messageId": UUIDAttribute, // Message ID
        "customerJourneyId": UUIDAttribute, // Customer Journey ID
        "sendingId": UUIDAttribute, // Sending ID
        "emailDomain": StringAttribute, // Email domain
        "emailAddressUsed": StringAttribute, // Email address used
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID
        "usageType": StringAttribute, // Usage type
        "secondaryRecipientProfileId": UUIDAttribute, // Secondary recipient profile ID
        "interactionType": StringAttribute, // Interaction type
        "timestamp": StringAttribute, // Timestamp
        "visitorId": UUIDAttribute, // Visitor ID
        "sessionId": UUIDAttribute, // Session ID
        "countryIsoCode": IntegerAttribute, //Country ISO code
        "state": StringAttribute, // State
        "city": StringAttribute, // City
        "postalCode": IntegerAttribute, //Postal code
        "browserId": UUIDAttribute, // Browser ID
        "browserVersion": StringAttribute, // Browser version
        "operatingSystemId": UUIDAttribute, // Operating system ID
        "operatingSystemVersion": StringAttribute, // Operating system version
        "searchPhrase": StringAttribute, // Search phrase
        "searchEngineName": StringAttribute, // Search engine name
        "visitorReturningStatus": StringAttribute, // Visitor returning status
        "visitDuration": StringAttribute, // Visit duration
        "formSubmissionId": UUIDAttribute, // Form submission ID
        "visitorAnonymousStatus": StringAttribute, // Visitor anonymous status
        "leadId": UUIDAttribute, // Lead ID
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