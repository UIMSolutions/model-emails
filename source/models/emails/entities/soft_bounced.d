module models.emails.entities.soft_bounced;

@safe:
import models.emails;

class DEMLSoftBounced: DOOPEntity {
  mixin(EntityThis!("EMLSoftBounced"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "bounceCategory": StringAttributeClass, // Bounce category"]),
        "remoteBounce": StringAttributeClass, // Remote bounce"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_softbounced");
  }
}
mixin(EntityCalls!("EMLSoftBounced"));

unittest {
  version(uim_entities) {
    assert(EMLSoftBounced);
  
  auto entity = EMLSoftBounced;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}