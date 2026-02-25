#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocext_terms_accepted'
wp option delete 'rocext_terms_accepted_date'
wp option delete 'rocext_terms_accepted_by'
wp option delete 'rocext_show_full_history'
wp option delete 'rocext_visible_columns'
wp option delete 'rocext_user_labels'
wp option delete 'rocext_auto_cleanup'
wp option delete 'rocext_retention_period'
wp option delete 'rocext_policy_version'
wp option delete 'rocext_integrity_salt'
wp option delete 'rocext_table_suffix'
wp option delete 'rocext_date_format'
wp option delete 'rocext_time_format'
wp option delete 'rocext_apply_display_to_exports'
wp option delete 'rocext_geoip_enabled'
wp option delete 'rocext_menu_location'
wp option delete 'rocext_wizard_state'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rocext_admin_messages_%' OR option_name LIKE '_site_transient_rocext_admin_messages_%'"
wp transient delete 'rocext_invalid_records'
wp transient delete 'rocext_verification_result'

# Clear Cron Jobs
wp cron event delete 'rocext_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rocext_history_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rocext_history_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rocext_history_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rocext_history_warning_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rocext_salt_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rocext_salt_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rocext_salt_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rocext_salt_notice_dismissed'"
