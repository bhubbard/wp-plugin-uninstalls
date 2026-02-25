#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jubelio_shipment_token'
wp option delete 'woocommerce_jubelioshipment_settings'
wp option delete 'jubelio_auth'
wp option delete 'jubelio_shipment_domain'
wp option delete 'woocommerce_shipping_debug_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_jubelioshipment_13_settings'

# Delete Transients
wp transient delete 'jubelio_shipment_token'
wp transient delete '_jubelio_shipment_invalid_promotions'
wp transient delete 'jubelio_shipment_promotion_usage'
wp transient delete 'jubelio_shipment_multi_origin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_latitude_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_latitude_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_latitude_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_latitude_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_longitude_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_longitude_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_longitude_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_longitude_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jubelioshipment_awb_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jubelioshipment_awb_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jubelioshipment_awb_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jubelioshipment_awb_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jubelioshipment_label_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jubelioshipment_label_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jubelioshipment_label_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jubelioshipment_label_data'"
