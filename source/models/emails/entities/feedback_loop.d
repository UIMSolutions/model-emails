module models.emails.entities.feedback_loop;

@safe:
import models.emails;

class DEMLFeedbackLoop : DOOPEntity {
  mixin(EntityThis!("EMLFeedbackLoop"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": OOPStringAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPStringAttribute.descriptions(["en":"Contact ID"]),
        "accountId": OOPStringAttribute.descriptions(["en":"Account ID"]),
        "messageId": OOPStringAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPStringAttribute.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPStringAttribute.descriptions(["en":"Organization ID"]),
        "sendingId": OOPStringAttribute.descriptions(["en":"Sending ID"]),
        "customerJourneyIterationId": OOPStringAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
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