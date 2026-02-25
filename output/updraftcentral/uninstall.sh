#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'updraftcentral_dbversion'
wp option delete 'updraftcentral_options'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'updraft_task_manager_dbversion'
wp option delete 'updraft_task_manager_plugins'

# Clear Cron Jobs
wp cron event delete 'updraftcentral_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_editor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_editor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_editor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_editor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_backup_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_backup_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_backup_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_backup_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_load_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_load_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_load_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_load_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_user_defined_timeout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_user_defined_timeout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_user_defined_timeout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_user_defined_timeout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_shortcut_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_shortcut_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_shortcut_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_shortcut_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_shortcuts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_shortcuts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_shortcuts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_shortcuts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_site_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_site_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_site_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_site_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_modules_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_modules_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_modules_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_modules_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_dashboard_last_loaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_dashboard_last_loaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_dashboard_last_loaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_dashboard_last_loaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uc_cron_sites_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uc_cron_sites_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uc_cron_sites_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uc_cron_sites_processed'"
