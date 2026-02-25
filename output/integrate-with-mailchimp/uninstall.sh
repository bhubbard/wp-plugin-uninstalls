#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iafwmc_account_data'
wp option delete 'iafwmc_email_validation_keywords'
wp option delete 'iafwmc_email_validation_handling'
wp option delete 'iafwmc_email_detection_keywords'
wp option delete 'iafwmc_email_detection_handling'
wp option delete 'iafwmc_spam_detection_keywords'
wp option delete 'iafwmc_spam_detection_handling'
wp option delete 'iafwmc_delete_data_on_uninstall'
wp option delete 'iafwmc_error_notification'
wp option delete 'iafwmc_error_notification_email'
wp option delete 'iafwmc_error_notification_subject'
wp option delete 'iafwmc_request_key'
wp option delete 'iafwmc_session_key'
wp option delete 'iafwmc_session_plan'
wp option delete 'iafwmc_review_enabled'
wp option delete 'iafwmc_review_dismissed'
wp option delete 'iafwmc_review_remind_me_later'

# Delete Transients
wp transient delete 'iafwmc_account_message'
wp transient delete 'iafwmc_error_log_success'
wp transient delete 'iafwmc_error_log_fail'
wp transient delete 'iafwmc_settings_saved'
wp transient delete 'iafwmc_license_fail'
wp transient delete 'iafwmc_license_success'
wp transient delete 'iafwmc_setup_message'
wp transient delete 'iafwmc_auth_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
