#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ups_shipper_info'
wp option delete 'ups_account_details'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'confirmation_data_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'confirmation_data_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'confirmation_data_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'confirmation_data_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'created_shipments_details_array'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'created_shipments_details_array'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'created_shipments_details_array'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'created_shipments_details_array'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ShipmentIdentificationNumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ShipmentIdentificationNumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ShipmentIdentificationNumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ShipmentIdentificationNumber'"
