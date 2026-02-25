#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'latepoint_wizard_visited'
wp option delete 'latepoint_redirect_to_wizard'
wp option delete 'latepoint_show_version_5_modal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'latepoint_blocks_styles_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addon_db_version'"
wp option delete 'latepoint_db_version'
wp option delete 'latepoint_page_customer-cabinet'
wp option delete 'latepoint_db_seeded'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_csv_import_file_%' OR option_name LIKE '_site_transient_csv_import_file_%'"

# Clear Cron Jobs
wp cron event delete 'latepoint_check_if_addons_update_available'
wp cron event delete 'latepoint_clear_old_activity_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latepoint_admin_menu_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latepoint_admin_menu_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latepoint_admin_menu_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latepoint_admin_menu_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latepoint_custom_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latepoint_custom_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latepoint_custom_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latepoint_custom_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latepoint_custom_allowed_records'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latepoint_custom_allowed_records'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latepoint_custom_allowed_records'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latepoint_custom_allowed_records'"
