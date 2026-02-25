#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'express_one_api_key'
wp option delete 'express_one_sender_name'
wp option delete 'express_one_sender_country'
wp option delete 'express_one_sender_zipcode'
wp option delete 'express_one_sender_city'
wp option delete 'express_one_sender_street'
wp option delete 'express_one_sender_telephone'
wp option delete 'express_one_sender_fax'
wp option delete 'express_one_sender_gsm'
wp option delete 'express_one_sender_email'
wp option delete 'express_one_label_layout_id'
wp option delete 'woocommerce_express_one_pickup_shipping_settings'
wp option delete 'woocommerce_express_one_flat_shipping_settings'
wp option delete 'woocommerce_price_display_suffix'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_express_one_shipment_created_%' OR option_name LIKE '_site_transient_express_one_shipment_created_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_express_one_shipment_error_%' OR option_name LIKE '_site_transient_express_one_shipment_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_express_one_shipment_updated_%' OR option_name LIKE '_site_transient_express_one_shipment_updated_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bulk_labels_result_%' OR option_name LIKE '_site_transient_bulk_labels_result_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'express_one_shipping_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'express_one_shipping_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'express_one_shipping_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'express_one_shipping_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expressone_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expressone_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expressone_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expressone_shipment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expressone_cargo_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expressone_cargo_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expressone_cargo_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expressone_cargo_ids'"
