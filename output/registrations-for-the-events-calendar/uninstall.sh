#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtec_db_version'
wp option delete 'rtec_options'
wp option delete 'tribe_skip_welcome'
wp option delete 'tec_onboarding_wizard_data'
wp option delete 'tec_events_onboarding_page_dismissed'
wp option delete 'tec_onboarding_wizard_visited_guided_setup'
wp option delete 'rtec_migration_status'
wp option delete 'rtec_error_log'
wp option delete 'rtec_migration_missed'
wp option delete 'rtec_migration_date'
wp option delete 'rtec_statuses'

# Delete Transients
wp transient delete 'rtec_new_registrations'
wp transient delete 'rtec_smtp_message'
wp transient delete 'rtec_new_messages'
wp transient delete 'registrations_tec_dismiss_lite'
wp transient delete 'registrations_help_notice_dismiss'
wp transient delete '_tribe_events_activation_redirect'
wp transient delete 'rtec_last_db_error'
wp transient delete 'rtecSubmissionError'
wp transient delete 'rtec_last_email_error'
wp transient delete 'rtec_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtec_dismiss_bfcm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtec_dismiss_bfcm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtec_dismiss_bfcm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtec_dismiss_bfcm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECnotificationEmailRecipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECnotificationEmailRecipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECnotificationEmailRecipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECnotificationEmailRecipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECdeadlineTimeStamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECdeadlineTimeStamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECdeadlineTimeStamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECdeadlineTimeStamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECconfirmationEmailFrom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECconfirmationEmailFrom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECconfirmationEmailFrom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECconfirmationEmailFrom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECregistrationsDisabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECregistrationsDisabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECregistrationsDisabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECregistrationsDisabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECdeadlineType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECdeadlineType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECdeadlineType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECdeadlineType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECwhoCanRegister'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECwhoCanRegister'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECwhoCanRegister'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECwhoCanRegister'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTEClimitRegistrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTEClimitRegistrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTEClimitRegistrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTEClimitRegistrations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECmaxRegistrations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECmaxRegistrations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECmaxRegistrations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECmaxRegistrations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtec_registrations_view_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtec_registrations_view_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtec_registrations_view_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtec_registrations_view_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECnumRegistered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECnumRegistered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECnumRegistered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECnumRegistered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDateUTC'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTECSeriesRegistrationType'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTECSeriesRegistrationType'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTECSeriesRegistrationType'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTECSeriesRegistrationType'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTEC_Migration_Complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTEC_Migration_Complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTEC_Migration_Complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTEC_Migration_Complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTEC_Migration_migrated_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTEC_Migration_migrated_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTEC_Migration_migrated_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTEC_Migration_migrated_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTEC_Migration_backwards_compat_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTEC_Migration_backwards_compat_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTEC_Migration_backwards_compat_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTEC_Migration_backwards_compat_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_RTEC_Migration_Failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_RTEC_Migration_Failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_RTEC_Migration_Failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_RTEC_Migration_Failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_EventStartDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_OrganizerEmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_OrganizerEmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_OrganizerEmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_OrganizerEmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tribe-dismiss-notice-time-event-tickets-install'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tribe-dismiss-notice-time-event-tickets-install'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tribe-dismiss-notice-time-event-tickets-install'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tribe-dismiss-notice-time-event-tickets-install'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tribe-dismiss-notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tribe-dismiss-notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tribe-dismiss-notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tribe-dismiss-notice'"
