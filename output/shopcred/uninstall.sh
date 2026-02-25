#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopcred-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'shopcred-pro-settings'
wp option delete 'shop-cred'
wp option delete 'spc_save_settings'
wp option delete 'shopcred_dynamic_css_time'
wp option delete 'Dynamic_CSS_posts'
wp option delete 'shopcredblocks_dynamic_css_time'
wp option delete 'widget_block'
wp option delete 'spc_do_update_redirect'
wp option delete 'woocommerce_placeholder_image'
wp option delete '__spc_asset_version'

# Delete Transients
wp transient delete 'shopcred-dashboard-all-config-data'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spc-builder-widget-area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spc-builder-widget-area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spc-builder-widget-area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spc-builder-widget-area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopcred_dynamic_css_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopcred_dynamic_css_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopcred_dynamic_css_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopcred_dynamic_css_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shopcred_reusable_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shopcred_reusable_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shopcred_reusable_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shopcred_reusable_blocks'"
