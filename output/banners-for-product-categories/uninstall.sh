#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_prod_cat_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_prod_cat_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_prod_cat_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_prod_cat_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_prod_cat_banner_mob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_prod_cat_banner_mob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_prod_cat_banner_mob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_prod_cat_banner_mob'"
