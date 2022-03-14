module models.emails.entities.soft_bounced;

@safe:
import models.emails;

class DEMLSoftBounced: DOOPEntity {
  mixin(OOPEntityThis!("EMLSoftBounced"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "bounceCategory": OOPStringAttribute.descriptions(["en":"Bounce category"]),
        "remoteBounce": OOPStringAttribute.descriptions(["en":"Remote bounce"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_softbounced");
  }
}
mixin(OOPEntityCalls!("EMLSoftBounced"));

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