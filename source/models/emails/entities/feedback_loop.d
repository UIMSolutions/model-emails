module models.emails.entities.feedback_loop;

@safe:
import models.emails;

class DEMLFeedbackLoop : DOOPEntity {
  mixin(EntityThis!("EMLFeedbackLoop"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": StringAttribute, // Unique identifier of the interaction."]),
        "contactId": StringAttribute, // Contact ID"]),
        "accountId": StringAttribute, // Account ID"]),
        "messageId": StringAttribute, // Message ID"]),
        "customerJourneyId": StringAttribute, // Customer Journey ID"]),
        "organizationId": StringAttribute, // Organization ID"]),
        "sendingId": StringAttribute, // Sending ID"]),
        "customerJourneyIterationId": StringAttribute, // Customer journey iteration ID"]),
        "usageType": StringAttribute, // Usage type"]),
        "interactionType": StringAttribute, // Interaction type"]),
        "timestamp": StringAttribute, // Timestamp"]),
      ])
      .registerPath("email_feedbackloops");
  }
}
mixin(EntityCalls!("EMLFeedbackLoop"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLFeedbackLoop);
  
  auto entity = EMLFeedbackLoop;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}