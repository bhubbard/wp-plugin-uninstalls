#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boldgrid_backup_settings'
wp option delete 'boldgrid_backup_latest_backup'
wp option delete 'boldgrid_backup_pending_rollback'
wp option delete 'boldgrid_backup_id'
wp option delete 'boldgrid_backup_last_backup'
wp option delete 'boldgrid_settings'
wp option delete 'boldgrid_reseller'
wp option delete 'boldgrid_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'auto_update_%'"
wp option delete 'boldgrid_backup_tokens'
wp option delete 'boldgrid_site_hash'
wp option delete 'bg_connect_configs'
wp option delete 'bglib_configs'
wp option delete 'boldgrid_connect_hide_menu'
wp option delete 'boldgrid_plugin_page_notices'
wp option delete '_transient_timeout_boldgrid_plugin_information'
wp option delete 'bglib_activity'
wp option delete 'bglib_rating_prompt'

# Delete Transients
wp transient delete 'dirsize_cache'
wp transient delete 'boldgrid_backup_wp_size'
wp transient delete 'boldgrid_backup_db_size'
wp transient delete 'boldgrid_available'
wp transient delete 'bg_license_data'
wp transient delete 'boldgrid_api_data'
wp transient delete 'boldgrid_plugins_filtered'
wp transient delete 'update_plugins'
wp transient delete 'boldgrid_plugin_information'
wp transient delete 'update_themes'
wp transient delete 'boldgrid_theme_information'
wp transient delete 'random_seed'
wp transient delete 'boldgrid_theme_data'
wp transient delete 'boldgrid_plugins'
wp transient delete 'boldgrid_wporg_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bglibDashboardOrder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bglibDashboardOrder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bglibDashboardOrder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bglibDashboardOrder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boldgrid_dismissed_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boldgrid_dismissed_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boldgrid_dismissed_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boldgrid_dismissed_admin_notices'"
