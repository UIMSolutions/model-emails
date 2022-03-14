module models.emails.email;

@safe:
import models.emails;

// Group of undeleted system users and undeleted teams. Emails can be used to control access to specific objects.
class DEMLEmail : DOOPEntity {
  mixin(OOPEntityThis!("EMLEmail"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": OOPAttributeUUID.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPAttributeString.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPAttributeLink("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPAttributeLink("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPAttributeLink("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "activityId": OOPAttributeLink("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": OOPAttributeInteger.descriptions(["en":"Type of activity."]),
        "isBilled": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was billed as part of resolving a case."]),
        "isRegularActivity": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": OOPAttributeBoolean.descriptions(["en":"Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": OOPAttributeInteger.descriptions(["en":"Priority of the activity."]),
        "priorityCode_display": OOPAttributeString.descriptions(["en":""]),
        "regardingObjectId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": OOPAttributeInteger.descriptions(["en":"The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": OOPAttributeString.descriptions(["en":"Scheduled end time of the activity."]),
        "scheduledStart": OOPAttributeString.descriptions(["en":"Scheduled start time of the activity."]),
        "sortDate": OOPAttributeDate.descriptions(["en":"Shows the date and time by which the activities are sorted."]),
        "subject": OOPAttributeString.descriptions(["en":"Subject associated with the activity."]),
        "scheduledDurationMinutes": OOPAttributeString.descriptions(["en":"Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": OOPAttributeString.descriptions(["en":"Actual duration of the activity in minutes."]),
        "actualEnd": OOPAttributeString.descriptions(["en":"Actual end time of the activity."]),
        "actualStart": OOPAttributeString.descriptions(["en":"Actual start time of the activity."]),
        "category": OOPAttributeString.descriptions(["en":"Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": OOPAttributeString.descriptions(["en":"Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": OOPAttributeString.descriptions(["en":"Additional information provided by the external application as JSON. For internal use only."]),
        "to": OOPAttributeString.descriptions(["en":"The account, contact, lead, queue, or user recipients for the activity."]),
        "from": OOPAttributeString.descriptions(["en":"The sender of the activity."]),
        "BCC": OOPAttributeString.descriptions(["en":"Enter the recipients that are included on the activity distribution, but are not displayed to other recipients."]),
        "CC": OOPAttributeString.descriptions(["en":"Enter the recipients that should be copied on the activity."]),
        "sentOn": OOPAttributeDatetime.descriptions(["en":"Date and time when the activity was sent."]),
        "senderMailboxId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": OOPAttributeInteger.descriptions(["en":"Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": OOPAttributeString.descriptions(["en":""]),
        "directionCode": OOPAttributeInteger.descriptions(["en":"Select the direction of the activity as incoming or outbound."]),
        "statusCode": OOPAttributeInteger.descriptions(["en":"Select the email's status."]),
        "statusCode_display": OOPAttributeString.descriptions(["en":""]),
        "submittedBy": OOPAttributeLink("aplUser").descriptions(["en":"Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365."]),
        "mimeType": OOPAttributeString.descriptions(["en":"MIME type of the email message data."]),
        "readReceiptRequested": OOPAttributeString.descriptions(["en":"Indicates that a read receipt is requested."]),
        "trackingToken": OOPAttributeString.descriptions(["en":"Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365."]),
        "sender": OOPAttributeString.descriptions(["en":"Sender of the email."]),
        "toRecipients": OOPAttributeString.descriptions(["en":"Shows the email addresses corresponding to the recipients."]),
        "deliveryReceiptRequested": OOPAttributeString.descriptions(["en":"Select whether the sender should receive confirmation that the email was delivered."]),
        "stateCode": OOPAttributeInteger.descriptions(["en":"Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited."]),
        "stateCode_display": OOPAttributeString.descriptions(["en":""]),
        "messageId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the email message. Used only for email that is received."]),
        "deliveryAttempts": OOPAttributeString.descriptions(["en":"Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues."]),
        "compressed": OOPAttributeString.descriptions(["en":"Indicates if the body is compressed."]),
        "notifications": OOPAttributeString.descriptions(["en":"Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments."]),
        "notifications_display": OOPAttributeString.descriptions(["en":""]),
        "transactionCurrencyId": OOPAttributeLink("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": OOPAttributeString.descriptions(["en":"Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "emailSender": OOPAttributeString.descriptions(["en":"Shows the sender of the email."]),
        "emailSenderObjectTypeCode": OOPAttributeInteger.descriptions(["en":"The name of the entity linked by emailSender"]),
        "sendersAccount": OOPAttributeString.descriptions(["en":"Shows the parent account of the sender of the email."]),
        "sendersAccountObjectTypeCode": OOPAttributeInteger.descriptions(["en":"The name of the entity linked by sendersAccount"]),
        "attachmentCount": OOPAttributeString.descriptions(["en":"Shows the umber of attachments of the email message."]),
        "parentActivityId": OOPAttributeLink("aplActivity").descriptions(["en":"Select the activity that the email is associated with."]),
        "inReplyTo": OOPAttributeString.descriptions(["en":"Type the ID of the email message that this email activity is a response to."]),
        "baseConversationIndexHash": OOPAttributeString.descriptions(["en":"Hash of base of conversation index."]),
        "conversationIndex": OOPAttributeString.descriptions(["en":"Identifier for all the email responses for this conversation."]),
        "correlationMethod": OOPAttributeString.descriptions(["en":"Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only."]),
        "correlationMethod_display": OOPAttributeString.descriptions(["en":""]),
        "postponeEmailProcessingUntil": OOPAttributeString.descriptions(["en":"For internal use only."]),
        "processId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the process."]),
        "stageId": OOPAttributeUUID.descriptions(["en":"Shows the ID of the stage."]),
        "isUnsafe": OOPAttributeString.descriptions(["en":"For internal use only."]),
        "SLAId": OOPAttributeLink("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the email record."]),
        "SLAInvokedId": OOPAttributeUUID.descriptions(["en":"Last SLA that was applied to this email. This field is for internal use only."]),
        "onHoldTime": OOPAttributeTime.descriptions(["en":"Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": OOPAttributeTime.descriptions(["en":"Contains the date and time stamp of the last on hold time."]),
        "traversedPath": OOPAttributeString.descriptions(["en":"For internal use only."]),
        "attachmentOpenCount": OOPAttributeString.descriptions(["en":"Shows the number of times an email attachment has been viewed."]),
        "conversationTrackingId": OOPAttributeUUID.descriptions(["en":"Conversation Tracking Id."]),
        "delayedEmailSendTime": OOPAttributeTime.descriptions(["en":"Enter the expected date and time when email will be sent."]),
        "lastOpenedTime": OOPAttributeTime.descriptions(["en":"Shows the latest date and time when email was opened."]),
        "linksClickedCount": OOPAttributeString.descriptions(["en":"Shows the number of times a link in an email has been clicked."]),
        "openCount": OOPAttributeString.descriptions(["en":"Shows the number of times an email has been opened."]),
        "replyCount": OOPAttributeString.descriptions(["en":"Shows the number of replies received for an email."]),
        "emailTrackingId": OOPAttributeUUID.descriptions(["en":"Email Tracking Id."]),
        "followEmailUserPreference": OOPAttributeString.descriptions(["en":"Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state."]),
        "isEmailFollowed": OOPAttributeBoolean.descriptions(["en":"For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email."]),
        "emailReminderExpiryTime": OOPAttributeTime.descriptions(["en":"Shows the date and time when an email reminder expires."]),
        "emailReminderType": OOPAttributeString.descriptions(["en":"Shows the type of the email reminder."]),
        "emailReminderType_display": OOPAttributeString.descriptions(["en":""]),
        "emailReminderStatus": OOPAttributeString.descriptions(["en":"Shows the status of the email reminder."]),
        "emailReminderStatus_display": OOPAttributeString.descriptions(["en":""]),
        "emailReminderText": OOPAttributeString.descriptions(["en":"For internal use only."]),
        "templateId": OOPAttributeUUID.descriptions(["en":"For internal use only. ID for template used in email."]),
        "reminderActionCardId": OOPAttributeUUID.descriptions(["en":"Reminder Action Card Id."]),
        "isEmailReminderSet": OOPAttributeBoolean.descriptions(["en":"For internal use only. Shows whether this email Reminder is Set."]),
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