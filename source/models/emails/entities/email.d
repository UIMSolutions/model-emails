module models.emails.entities.email;

@safe:
import models.emails;

// Group of undeleted system users and undeleted teams. Emails can be used to control access to specific objects.
class DEMLEmail : DOOPEntity {
  mixin(OOPEntityThis!("EMLEmail"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPIntegerAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": OOPIntegerAttribute.descriptions(["en":"Type of activity."]),
        "isBilled": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the activity was billed as part of resolving a case."]),
        "isRegularActivity": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": OOPBooleanAttribute.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": OOPIntegerAttribute.descriptions(["en":"Priority of the activity."]),
        "priorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "regardingObjectId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": OOPStringAttribute.descriptions(["en":"Scheduled end time of the activity."]),
        "scheduledStart": OOPStringAttribute.descriptions(["en":"Scheduled start time of the activity."]),
        "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
        "subject": OOPStringAttribute.descriptions(["en":"Subject associated with the activity."]),
        "scheduledDurationMinutes": OOPStringAttribute.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": OOPStringAttribute.descriptions(["en":"Actual duration of the activity in minutes."]),
        "actualEnd": OOPStringAttribute.descriptions(["en":"Actual end time of the activity."]),
        "actualStart": OOPStringAttribute.descriptions(["en":"Actual start time of the activity."]),
        "category": OOPStringAttribute.descriptions(["en":"Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": OOPStringAttribute.descriptions(["en":"Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": OOPStringAttribute.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
        "to": OOPStringAttribute.descriptions(["en":"The account, contact, lead, queue, or user recipients for the activity."]),
        "from": OOPStringAttribute.descriptions(["en":"The sender of the activity."]),
        "BCC": OOPStringAttribute.descriptions(["en":"Enter the recipients that are included on the activity distribution, but are not displayed to other recipients."]),
        "CC": OOPStringAttribute.descriptions(["en":"Enter the recipients that should be copied on the activity."]),
        "sentOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the activity was sent."]),
        "senderMailboxId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": OOPIntegerAttribute.descriptions(["en":"Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": OOPStringAttribute.descriptions(["en":""]),
        "directionCode": OOPIntegerAttribute.descriptions(["en":"Select the direction of the activity as incoming or outbound."]),
        "statusCode": OOPIntegerAttribute.descriptions(["en":"Select the email's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "submittedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365."]),
        "mimeType": OOPStringAttribute.descriptions(["en":"MIME type of the email message data."]),
        "readReceiptRequested": OOPStringAttribute.descriptions(["en":"Indicates that a read receipt is requested."]),
        "trackingToken": OOPStringAttribute.descriptions(["en":"Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365."]),
        "sender": OOPStringAttribute.descriptions(["en":"Sender of the email."]),
        "toRecipients": OOPStringAttribute.descriptions(["en":"Shows the email addresses corresponding to the recipients."]),
        "deliveryReceiptRequested": OOPStringAttribute.descriptions(["en":"Select whether the sender should receive confirmation that the email was delivered."]),
        "stateCode": OOPIntegerAttribute.descriptions(["en":"Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited."]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the email message. Used only for email that is received."]),
        "deliveryAttempts": OOPStringAttribute.descriptions(["en":"Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues."]),
        "compressed": OOPStringAttribute.descriptions(["en":"Indicates if the body is compressed."]),
        "notifications": OOPStringAttribute.descriptions(["en":"Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments."]),
        "notifications_display": OOPStringAttribute.descriptions(["en":""]),
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPStringAttribute.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "emailSender": OOPStringAttribute.descriptions(["en":"Shows the sender of the email."]),
        "emailSenderObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by emailSender"]),
        "sendersAccount": OOPStringAttribute.descriptions(["en":"Shows the parent account of the sender of the email."]),
        "sendersAccountObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by sendersAccount"]),
        "attachmentCount": OOPStringAttribute.descriptions(["en":"Shows the umber of attachments of the email message."]),
        "parentActivityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Select the activity that the email is associated with."]),
        "inReplyTo": OOPStringAttribute.descriptions(["en":"Type the ID of the email message that this email activity is a response to."]),
        "baseConversationIndexHash": OOPStringAttribute.descriptions(["en":"Hash of base of conversation index."]),
        "conversationIndex": OOPStringAttribute.descriptions(["en":"Identifier for all the email responses for this conversation."]),
        "correlationMethod": OOPStringAttribute.descriptions(["en":"Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only."]),
        "correlationMethod_display": OOPStringAttribute.descriptions(["en":""]),
        "postponeEmailProcessingUntil": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "processId": OOPUUIDAttribute.descriptions(["en":"Shows the ID of the process."]),
        "stageId": OOPUUIDAttribute.descriptions(["en":"Shows the ID of the stage."]),
        "isUnsafe": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the email record."]),
        "SLAInvokedId": OOPUUIDAttribute.descriptions(["en":"Last SLA that was applied to this email. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
        "traversedPath": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "attachmentOpenCount": OOPStringAttribute.descriptions(["en":"Shows the number of times an email attachment has been viewed."]),
        "conversationTrackingId": OOPUUIDAttribute.descriptions(["en":"Conversation Tracking Id."]),
        "delayedEmailSendTime": OOPAttributeTime.descriptions(["en":"Enter the expected date and time when email will be sent."]),
        "lastOpenedTime": OOPAttributeTime.descriptions(["en":"Shows the latest date and time when email was opened."]),
        "linksClickedCount": OOPStringAttribute.descriptions(["en":"Shows the number of times a link in an email has been clicked."]),
        "openCount": OOPStringAttribute.descriptions(["en":"Shows the number of times an email has been opened."]),
        "replyCount": OOPStringAttribute.descriptions(["en":"Shows the number of replies received for an email."]),
        "emailTrackingId": OOPUUIDAttribute.descriptions(["en":"Email Tracking Id."]),
        "followEmailUserPreference": OOPStringAttribute.descriptions(["en":"Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state."]),
        "isEmailFollowed": OOPBooleanAttribute.descriptions(["en":"For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email."]),
        "emailReminderExpiryTime": OOPAttributeTime.descriptions(["en":"Shows the date and time when an email reminder expires."]),
        "emailReminderType": OOPStringAttribute.descriptions(["en":"Shows the type of the email reminder."]),
        "emailReminderType_display": OOPStringAttribute.descriptions(["en":""]),
        "emailReminderStatus": OOPStringAttribute.descriptions(["en":"Shows the status of the email reminder."]),
        "emailReminderStatus_display": OOPStringAttribute.descriptions(["en":""]),
        "emailReminderText": OOPStringAttribute.descriptions(["en":"For internal use only."]),
        "templateId": OOPUUIDAttribute.descriptions(["en":"For internal use only. ID for template used in email."]),
        "reminderActionCardId": OOPUUIDAttribute.descriptions(["en":"Reminder Action Card Id."]),
        "isEmailReminderSet": OOPBooleanAttribute.descriptions(["en":"For internal use only. Shows whether this email Reminder is Set."]),
      ])
      .registerPath("email_emails");
  }
}
mixin(OOPEntityCalls!("EMLEmail"));

unittest {
  version(uim_entities) {
    assert(EML);
  
  auto entity = EML;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}