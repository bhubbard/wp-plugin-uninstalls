#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'overseas_express_api_key'
wp option delete 'overseas_express_sender_name'
wp option delete 'overseas_express_sender_country'
wp option delete 'overseas_express_sender_zipcode'
wp option delete 'overseas_express_sender_city'
wp option delete 'overseas_express_sender_street'
wp option delete 'overseas_express_sender_telephone'
wp option delete 'overseas_express_sender_fax'
wp option delete 'overseas_express_sender_gsm'
wp option delete 'overseas_express_sender_email'
wp option delete 'overseas_express_label_layout_id'
wp option delete 'woocommerce_overseas_express_pickup_shipping_settings'
wp option delete 'woocommerce_overseas_express_flat_shipping_settings'
wp option delete 'woocommerce_price_display_suffix'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bulk_labels_result_%' OR option_name LIKE '_site_transient_bulk_labels_result_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'overseas_express_shipping_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'overseas_express_shipping_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'overseas_express_shipping_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'overseas_express_shipping_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_overseas_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_overseas_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_overseas_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_overseas_shipment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_overseas_cargo_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_overseas_cargo_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_overseas_cargo_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_overseas_cargo_ids'"
