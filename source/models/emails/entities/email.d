module models.emails.entities.email;

@safe:
import models.emails;

// Group of undeleted system users and undeleted teams. Emails can be used to control access to specific objects.
class DEMLEmail : DEntity {
  mixin(EntityThis!("EMLEmail"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "createdOnBehalfBy": UUIDAttribute, //Shows who created the record on behalf of another user."]),
        "modifiedOnBehalfBy": UUIDAttribute, //Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttribute, //Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttribute, //Unique identifier of the data import or data migration that created this record."]),
        "ownerId": UUIDAttribute, // Owner Id"]),
        "ownerIdType": StringAttribute, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttribute, //Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttribute, //Unique identifier of the user that owns the activity."]),
        "owningTeamId": UUIDAttribute, //Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttribute, //For internal use only."]),
        "utcConversionTimeZoneCode": IntegerAttribute, //Time zone code that was in use when the record was created."]),
        "activityId": UUIDAttribute, // aplActivity").descriptions(["en":"Unique identifier of the activity."]),
        "activityTypeCode": IntegerAttribute, //Type of activity."]),
        "isBilled": BooleanAttribute, // Information regarding whether the activity was billed as part of resolving a case."]),
        "isRegularActivity": BooleanAttribute, // Information regarding whether the activity is a regular activity type or event type."]),
        "isWorkflowCreated": BooleanAttribute, // Information regarding whether the activity was created from a workflow rule."]),
        "priorityCode": IntegerAttribute, //Priority of the activity."]),
        "priorityCode_display": StringAttribute, //
        "regardingObjectId": UUIDAttribute, // Unique identifier of the object with which the activity is associated."]),
        "regardingObjectTypeCode": IntegerAttribute, //The name of the entity linked by regardingObjectId"]),
        "scheduledEnd": StringAttribute, // Scheduled end time of the activity."]),
        "scheduledStart": StringAttribute, // Scheduled start time of the activity."]),
        "sortDate": DateAttribute, // Shows the date and time by which the activities are sorted."]),
        "subject": StringAttribute, // Subject associated with the activity."]),
        "scheduledDurationMinutes": StringAttribute, // Scheduled duration of the activity, specified in minutes."]),
        "actualDurationMinutes": StringAttribute, // Actual duration of the activity in minutes."]),
        "actualEnd": StringAttribute, // Actual end time of the activity."]),
        "actualStart": StringAttribute, // Actual start time of the activity."]),
        "category": StringAttribute, // Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function."]),
        "subcategory": StringAttribute, // Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function."]),
        "activityAdditionalParams": StringAttribute, // Additional information provided by the external application as JSON. For internal use only."]),
        "to": StringAttribute, // The account, contact, lead, queue, or user recipients for the activity."]),
        "from": StringAttribute, // The sender of the activity."]),
        "BCC": StringAttribute, // Enter the recipients that are included on the activity distribution, but are not displayed to other recipients."]),
        "CC": StringAttribute, // Enter the recipients that should be copied on the activity."]),
        "sentOn": DatetimeAttribute, // Date and time when the activity was sent."]),
        "senderMailboxId": UUIDAttribute, // Unique identifier of the mailbox associated with the sender of the email message."]),
        "deliveryPriorityCode": IntegerAttribute, //Priority of delivery of the activity to the email server."]),
        "deliveryPriorityCode_display": StringAttribute, //
        "directionCode": IntegerAttribute, //Select the direction of the activity as incoming or outbound."]),
        "statusCode": IntegerAttribute, //Select the email's status."]),
        "statusCode_display": StringAttribute, //
        "submittedBy": UUIDAttribute, //Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365."]),
        "mimeType": StringAttribute, // MIME type of the email message data."]),
        "readReceiptRequested": StringAttribute, // Indicates that a read receipt is requested."]),
        "trackingToken": StringAttribute, // Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365."]),
        "sender": StringAttribute, // Sender of the email."]),
        "toRecipients": StringAttribute, // Shows the email addresses corresponding to the recipients."]),
        "deliveryReceiptRequested": StringAttribute, // Select whether the sender should receive confirmation that the email was delivered."]),
        "stateCode": IntegerAttribute, //Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited."]),
        "stateCode_display": StringAttribute, //
        "messageId": UUIDAttribute, // Unique identifier of the email message. Used only for email that is received."]),
        "deliveryAttempts": StringAttribute, // Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues."]),
        "compressed": StringAttribute, // Indicates if the body is compressed."]),
        "notifications": StringAttribute, // Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments."]),
        "notifications_display": StringAttribute, //
        "transactionCurrencyId": CurrencyIdAttribute, // Choose the local currency for the record to make sure budgets are reported in the correct currency."]),
        "exchangeRate": StringAttribute, // Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency."]),
        "emailSender": StringAttribute, // Shows the sender of the email."]),
        "emailSenderObjectTypeCode": IntegerAttribute, //The name of the entity linked by emailSender"]),
        "sendersAccount": StringAttribute, // Shows the parent account of the sender of the email."]),
        "sendersAccountObjectTypeCode": IntegerAttribute, //The name of the entity linked by sendersAccount"]),
        "attachmentCount": StringAttribute, // Shows the umber of attachments of the email message."]),
        "parentActivityId": UUIDAttribute, // aplActivity").descriptions(["en":"Select the activity that the email is associated with."]),
        "inReplyTo": StringAttribute, // Type the ID of the email message that this email activity is a response to."]),
        "baseConversationIndexHash": StringAttribute, // Hash of base of conversation index."]),
        "conversationIndex": StringAttribute, // Identifier for all the email responses for this conversation."]),
        "correlationMethod": StringAttribute, // Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only."]),
        "correlationMethod_display": StringAttribute, //
        "postponeEmailProcessingUntil": StringAttribute, // For internal use only."]),
        "processId": UUIDAttribute, // Shows the ID of the process."]),
        "stageId": UUIDAttribute, // Shows the ID of the stage."]),
        "isUnsafe": StringAttribute, // For internal use only."]),
        "SLAId": UUIDAttribute, // aplSLA").descriptions(["en":"Choose the service level agreement (SLA) that you want to apply to the email record."]),
        "SLAInvokedId": UUIDAttribute, // Last SLA that was applied to this email. This field is for internal use only."]),
        "onHoldTime": TimeAttribute, // Shows how long, in minutes, that the record was on hold."]),
        "lastOnHoldTime": TimeAttribute, // Contains the date and time stamp of the last on hold time."]),
        "traversedPath": StringAttribute, // For internal use only."]),
        "attachmentOpenCount": StringAttribute, // Shows the number of times an email attachment has been viewed."]),
        "conversationTrackingId": UUIDAttribute, // Conversation Tracking Id."]),
        "delayedEmailSendTime": TimeAttribute, // Enter the expected date and time when email will be sent."]),
        "lastOpenedTime": TimeAttribute, // Shows the latest date and time when email was opened."]),
        "linksClickedCount": StringAttribute, // Shows the number of times a link in an email has been clicked."]),
        "openCount": StringAttribute, // Shows the number of times an email has been opened."]),
        "replyCount": StringAttribute, // Shows the number of replies received for an email."]),
        "emailTrackingId": UUIDAttribute, // Email Tracking Id."]),
        "followEmailUserPreference": StringAttribute, // Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state."]),
        "isEmailFollowed": BooleanAttribute, // For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email."]),
        "emailReminderExpiryTime": TimeAttribute, // Shows the date and time when an email reminder expires."]),
        "emailReminderType": StringAttribute, // Shows the type of the email reminder."]),
        "emailReminderType_display": StringAttribute, //
        "emailReminderStatus": StringAttribute, // Shows the status of the email reminder."]),
        "emailReminderStatus_display": StringAttribute, //
        "emailReminderText": StringAttribute, // For internal use only."]),
        "templateId": UUIDAttribute, // For internal use only. ID for template used in email."]),
        "reminderActionCardId": UUIDAttribute, // Reminder Action Card Id."]),
        "isEmailReminderSet": BooleanAttribute, // For internal use only. Shows whether this email Reminder is Set."]),
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