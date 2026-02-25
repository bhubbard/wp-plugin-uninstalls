#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tvg_printnode_api_key'
wp option delete 'tvg_api_username'
wp option delete 'tvg_api_key'
wp option delete 'tvg_xgateway_api_key'
wp option delete 'tvg_api_demo'
wp option delete 'tvg_admin_notice'
wp option delete 'tvg_sender_kt'
wp option delete 'tvg_status_update'
wp option delete 'woocommerce_tvg_express_settings'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%address'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%contact'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%country_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%phone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%postcode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%kt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%name'"
wp option delete 'tvg_kt'
wp option delete 'tvg_printer'

# Delete Transients
wp transient delete 'tvg_shipping_options'
wp transient delete 'tvg_postboxes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tvg_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tvg_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tvg_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tvg_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tvg_skip_free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tvg_skip_free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tvg_skip_free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tvg_skip_free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tvg_skip_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tvg_skip_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tvg_skip_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tvg_skip_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tvg_postbox_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tvg_postbox_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tvg_postbox_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tvg_postbox_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tvg_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tvg_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tvg_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tvg_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipmentID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipmentID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipmentID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipmentID'"
