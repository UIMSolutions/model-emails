module models.emails.entities.email;

@safe:
import models.emails;

// Group of undeleted system users and undeleted teams. Emails can be used to control access to specific objects.
class DEMLEmail : DOOPEntity {
  mixin(EntityThis!("EMLEmail"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttributeClass, // Owner Id"]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPIntegerAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": OOPIntegerAttribute.descriptions(["en":"Type of activity."]),
        "isBilled": BooleanAttributeClass, // Information regarding whether the activity was billed as part of resolving a case."]),
        "isRegularActivity": BooleanAttributeClass, // Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": BooleanAttributeClass, // Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": OOPIntegerAttribute.descriptions(["en":"Priority of the activity."]),
        "priorityCode_display": StringAttributeClass, //
        "regardingObjectId": UUIDAttributeClass, // Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": StringAttributeClass, // Scheduled end time of the activity."]),
        "scheduledStart": StringAttributeClass, // Scheduled start time of the activity."]),
        "sortDate": DateAttributeClass, // Shows the date and time by which the activities are sorted."]),
        "subject": StringAttributeClass, // Subject associated with the activity."]),
        "scheduledDurationMinutes": StringAttributeClass, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttributeClass, // Actual duration of the activity in minutes."]),
        "actualEnd": StringAttributeClass, // Actual end time of the activity."]),
        "actualStart": StringAttributeClass, // Actual start time of the activity."]),
        "category": StringAttributeClass, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": StringAttributeClass, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": StringAttributeClass, // Additional information provided by the external application as JSON. For internal use only."]),
        "to": StringAttributeClass, // The account, contact, lead, queue, or user recipients for the activity."]),
        "from": StringAttributeClass, // The sender of the activity."]),
        "BCC": StringAttributeClass, // Enter the recipients that are included on the activity distribution, but are not displayed to other recipients."]),
        "CC": StringAttributeClass, // Enter the recipients that should be copied on the activity."]),
        "sentOn": DatetimeAttributeClass, // Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttributeClass, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": OOPIntegerAttribute.descriptions(["en":"Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttributeClass, //
        "directionCode": OOPIntegerAttribute.descriptions(["en":"Select the direction of the activity as incoming or outbound."]),
        "statusCode": OOPIntegerAttribute.descriptions(["en":"Select the email's status."]),
        "statusCode_display": StringAttributeClass, //
        "submittedBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365."]),
        "mimeType": StringAttributeClass, // MIME type of the email message data."]),
        "readReceiptRequested": StringAttributeClass, // Indicates that a read receipt is requested."]),
        "trackingToken": StringAttributeClass, // Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365."]),
        "sender": StringAttributeClass, // Sender of the email."]),
        "toRecipients": StringAttributeClass, // Shows the email addresses corresponding to the recipients."]),
        "deliveryReceiptRequested": StringAttributeClass, // Select whether the sender should receive confirmation that the email was delivered."]),
        "stateCode": OOPIntegerAttribute.descriptions(["en":"Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited."]),
        "stateCode_display": StringAttributeClass, //
        "messageId": UUIDAttributeClass, // Unique identifier of the email message. Used only for email that is received."]),
        "deliveryAttempts": StringAttributeClass, // Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues."]),
        "compressed": StringAttributeClass, // Indicates if the body is compressed."]),
        "notifications": StringAttributeClass, // Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments."]),
        "notifications_display": StringAttributeClass, //
        "transactionCurrencyId": OOPLinkAttribute("aplCurrency").descriptions(["en":"Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttributeClass, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "emailSender": StringAttributeClass, // Shows the sender of the email."]),
        "emailSenderObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by emailSender"]),
        "sendersAccount": StringAttributeClass, // Shows the parent account of the sender of the email."]),
        "sendersAccountObjectTypeCode": OOPIntegerAttribute.descriptions(["en":"The name of the entity linked by sendersAccount"]),
        "attachmentCount": StringAttributeClass, // Shows the umber of attachments of the email message."]),
        "parentActivityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Select the activity that the email is associated with."]),
        "inReplyTo": StringAttributeClass, // Type the ID of the email message that this email activity is a response to."]),
        "baseConversationIndexHash": StringAttributeClass, // Hash of base of conversation index."]),
        "conversationIndex": StringAttributeClass, // Identifier for all the email responses for this conversation."]),
        "correlationMethod": StringAttributeClass, // Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only."]),
        "correlationMethod_display": StringAttributeClass, //
        "postponeEmailProcessingUntil": StringAttributeClass, // For internal use only."]),
        "processId": UUIDAttributeClass, // Shows the ID of the process."]),
        "stageId": UUIDAttributeClass, // Shows the ID of the stage."]),
        "isUnsafe": StringAttributeClass, // For internal use only."]),
        "SLAId": OOPLinkAttribute("aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the email record."]),
        "SLAInvokedId": UUIDAttributeClass, // Last SLA that was applied to this email. This field is for internal use only."]),
        "onHoldTime": TimeAttributeClass, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttributeClass, // Contains the date and time stamp of the last on hold time."]),
        "traversedPath": StringAttributeClass, // For internal use only."]),
        "attachmentOpenCount": StringAttributeClass, // Shows the number of times an email attachment has been viewed."]),
        "conversationTrackingId": UUIDAttributeClass, // Conversation Tracking Id."]),
        "delayedEmailSendTime": TimeAttributeClass, // Enter the expected date and time when email will be sent."]),
        "lastOpenedTime": TimeAttributeClass, // Shows the latest date and time when email was opened."]),
        "linksClickedCount": StringAttributeClass, // Shows the number of times a link in an email has been clicked."]),
        "openCount": StringAttributeClass, // Shows the number of times an email has been opened."]),
        "replyCount": StringAttributeClass, // Shows the number of replies received for an email."]),
        "emailTrackingId": UUIDAttributeClass, // Email Tracking Id."]),
        "followEmailUserPreference": StringAttributeClass, // Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state."]),
        "isEmailFollowed": BooleanAttributeClass, // For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email."]),
        "emailReminderExpiryTime": TimeAttributeClass, // Shows the date and time when an email reminder expires."]),
        "emailReminderType": StringAttributeClass, // Shows the type of the email reminder."]),
        "emailReminderType_display": StringAttributeClass, //
        "emailReminderStatus": StringAttributeClass, // Shows the status of the email reminder."]),
        "emailReminderStatus_display": StringAttributeClass, //
        "emailReminderText": StringAttributeClass, // For internal use only."]),
        "templateId": UUIDAttributeClass, // For internal use only. ID for template used in email."]),
        "reminderActionCardId": UUIDAttributeClass, // Reminder Action Card Id."]),
        "isEmailReminderSet": BooleanAttributeClass, // For internal use only. Shows whether this email Reminder is Set."]),
      ])
      .registerPath("email_emails");
  }
}
mixin(EntityCalls!("EMLEmail"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EML);
  
  auto entity = EML;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}