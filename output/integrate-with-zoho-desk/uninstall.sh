#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iafwzdesk_account_data'
wp option delete 'iafwzdesk_email_validation_keywords'
wp option delete 'iafwzdesk_email_validation_handling'
wp option delete 'iafwzdesk_email_detection_keywords'
wp option delete 'iafwzdesk_email_detection_handling'
wp option delete 'iafwzdesk_spam_detection_keywords'
wp option delete 'iafwzdesk_spam_detection_handling'
wp option delete 'iafwzdesk_delete_data_on_uninstall'
wp option delete 'iafwzdesk_error_notification'
wp option delete 'iafwzdesk_error_notification_email'
wp option delete 'iafwzdesk_error_notification_subject'
wp option delete 'iafwzdesk_request_key'
wp option delete 'iafwzdesk_session_key'
wp option delete 'iafwzdesk_session_plan'
wp option delete 'iafwzdesk_review_enabled'
wp option delete 'iafwzdesk_review_dismissed'
wp option delete 'iafwzdesk_review_remind_me_later'

# Delete Transients
wp transient delete 'iafwzdesk_account_message'
wp transient delete 'iafwzdesk_error_log_success'
wp transient delete 'iafwzdesk_error_log_fail'
wp transient delete 'iafwzdesk_settings_saved'
wp transient delete 'iafwzdesk_license_fail'
wp transient delete 'iafwzdesk_license_success'
wp transient delete 'iafwzdesk_setup_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
