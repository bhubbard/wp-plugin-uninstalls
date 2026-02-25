#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ithemes-sync-authenticated'
wp option delete 'ithemes_sync_hide_authenticate_notice'
wp option delete 'ithemes-sync-admin_menu'
wp option delete 'ithemes-sync-dashboard-metaboxes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ithemes-sync-nonce-%'"
wp option delete 'pluginbuddy_plugins'
wp option delete 'wpcomplete_license_key'
wp option delete 'pmpro_um_license_key'
wp option delete 'rcpcr_license_key'
wp option delete 'rcprm'
wp option delete 'rcpum_license_key'
wp option delete 'rcpvl'
wp option delete 'rcpbp_license_key'
wp option delete 'view_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sync_login_%'"
wp option delete 'ithemes-sync-googst'
wp option delete 'sync_wp_deleted_plugins'
wp option delete 'update_plugins'
wp option delete 'ithemes_sync_urgent_notice_cache'
wp option delete 'ithemes-sync-cache'
wp option delete 'ithemes_sync_optimization'
wp option delete 'wpmu_upgrade_site'

# Delete Transients
wp transient delete 'ithemes-sync-activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_solid_central_ping_%' OR option_name LIKE '_site_transient_solid_central_ping_%'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Clear Cron Jobs
wp cron event delete 'ithemes_sync_daily_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it-sync-refresh-cd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it-sync-refresh-cd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it-sync-refresh-cd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it-sync-refresh-cd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithemes-sync-client-dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithemes-sync-client-dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithemes-sync-client-dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithemes-sync-client-dashboard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithemes-sync-client-dashboard-no-css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithemes-sync-client-dashboard-no-css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithemes-sync-client-dashboard-no-css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithemes-sync-client-dashboard-no-css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithemes-sync-suppress-admin-notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithemes-sync-suppress-admin-notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithemes-sync-suppress-admin-notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithemes-sync-suppress-admin-notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithemes-sync-admin_menu-whitelist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithemes-sync-admin_menu-whitelist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithemes-sync-admin_menu-whitelist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithemes-sync-admin_menu-whitelist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ithemes-sync-dashboard-widget-whitelist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ithemes-sync-dashboard-widget-whitelist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ithemes-sync-dashboard-widget-whitelist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ithemes-sync-dashboard-widget-whitelist'"
