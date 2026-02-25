#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_permalinks'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'doofinder_script_migrated'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'doofinder_for_wp_notices'
wp option delete 'doofinder_for_wp_show_once_notices'
wp option delete 'doofinder_for_wp_token'
wp option delete 'woocommerce_doofinder_internal_search_api_key'
wp option delete 'doofinder_for_wp_api_host'
wp option delete 'doofinder_wizard_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'woocommerce_doofinder_feed_attributes_additional_attributes'
wp option delete 'doofinder_update_on_save_last_exec'
wp option delete 'doofinder_for_wp_api_key'
wp option delete 'doofinder_for_wp_region'
wp option delete 'doofinder_for_wp_dooplugins_host'
wp option delete 'doofinder_for_wp_update_on_save'
wp option delete 'doofinder_for_wp_enable_js_layer'
wp option delete 'doofinder_for_wp_js_layer'
wp option delete 'doofinder_sector'
wp option delete 'doofinder_for_wp_plugin_version'
wp option delete 'doofinder_for_wp_plugin_update_running'
wp option delete 'doofinder_for_wp_rewrite_rules_state'

# Delete Transients
wp transient delete 'df_product_rest_attributes'

# Clear Cron Jobs
wp cron event delete 'doofinder_update_on_save'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_doofinder_for_wp_indexing_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_doofinder_for_wp_indexing_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_doofinder_for_wp_indexing_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_doofinder_for_wp_indexing_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost_variable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost_variable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost_variable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost_variable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
