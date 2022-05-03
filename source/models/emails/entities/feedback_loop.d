module models.emails.entities.feedback_loop;

@safe:
import models.emails;

class DEMLFeedbackLoop : DOOPEntity {
  mixin(EntityThis!("EMLFeedbackLoop"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": StringAttributeClass, // Unique identifier of the interaction."]),
        "contactId": StringAttributeClass, // Contact ID"]),
        "accountId": StringAttributeClass, // Account ID"]),
        "messageId": StringAttributeClass, // Message ID"]),
        "customerJourneyId": StringAttributeClass, // Customer Journey ID"]),
        "organizationId": StringAttributeClass, // Organization ID"]),
        "sendingId": StringAttributeClass, // Sending ID"]),
        "customerJourneyIterationId": StringAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
      ])
      .registerPath("email_feedbackloops");
  }
}
mixin(EntityCalls!("EMLFeedbackLoop"));

unittest {
  version(uim_entities) {
    assert(EMLFeedbackLoop);
  
  auto entity = EMLFeedbackLoop;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}