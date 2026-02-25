#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iafwhc_account_data'
wp option delete 'iafwhc_delete_data_on_uninstall'
wp option delete 'iafwhc_error_notification'
wp option delete 'iafwhc_error_notification_email'
wp option delete 'iafwhc_error_notification_subject'
wp option delete 'iafwhc_request_key'
wp option delete 'iafwhc_session_key'
wp option delete 'iafwhc_session_plan'
wp option delete 'iafwhc_review_enabled'
wp option delete 'iafwhc_review_dismissed'
wp option delete 'iafwhc_review_remind_me_later'

# Delete Transients
wp transient delete 'iafwhc_account_message'
wp transient delete 'iafwhc_error_log_success'
wp transient delete 'iafwhc_error_log_fail'
wp transient delete 'iafwhc_settings_saved'
wp transient delete 'iafwhc_license_fail'
wp transient delete 'iafwhc_license_success'
wp transient delete 'iafwhc_setup_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
