module models.emails.entities.sent;

@safe:
import models.emails;

class DEMLSent : DOOPEntity {
  mixin(EntityThis!("EMLSent"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": UUIDAttributeClass, // Contact ID"]),
        "accountId": UUIDAttributeClass, // Account ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "organizationId": UUIDAttributeClass, // Organization ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "emailAddressUsed": StringAttributeClass, // Email address used"]),
        "emailDomain": StringAttributeClass, // Email domain"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "activityId": UUIDAttributeClass, // aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_sents");
  }
}
mixin(EntityCalls!("EMLSent"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLSent);
  
  auto entity = EMLSent;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}