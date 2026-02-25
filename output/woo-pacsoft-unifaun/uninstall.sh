#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pacsoft_on_order_status'
wp option delete 'pacsoft_sync_with_options'
wp option delete 'pacsoft_track_link_on_order_status'
wp option delete 'pacsoft_logfile_activated'
wp option delete 'pacsoft_track_link_in_email'
wp option delete 'pacsoft_license_key'
wp option delete 'pacsoft_services'
wp option delete 'pacsoft_base_country'
wp option delete 'pacsoft_account_type'
wp option delete 'pacsoft_usern_unif'
wp option delete 'pacsoft_api_id'
wp option delete 'pacsoft_api_secret_id'
wp option delete 'pacsoft_pass_unif'
wp option delete 'pacsoft_addon_sms'
wp option delete 'pacsoft_addon_enot'
wp option delete 'pacsoft_single_package_per_order'
wp option delete 'pacsoft_print_freight_label_per_item'
wp option delete 'pacsoft_default_product_type'
wp option delete 'pacsoft_default_sender_quick_id'
wp option delete 'pacsoft_favorite'
wp option delete 'woocommerce_email_from_address'
wp option delete 'pacsoft_print_return_labels'
wp option delete 'pacsoft_customs_declaration_document_number'
wp option delete 'pacsoft_customs_import_export_type'
wp option delete 'woocommerce_weight_unit'
wp option delete 'pacsoft_customs_other_unit'
wp option delete 'woocommerce_default_country'
wp option delete 'pacsoft_test_mode'
wp option delete 'pacsoft_addon_notemail'
wp option delete 'pacsoft_send_customs_declaration'
wp option delete 'pacsoft_customs_declaration_cart_threshold'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'pacsoft_default_minimum_order_weight'
wp option delete 'pacsoft_printer_type'
wp option delete 'pacsoft_order_number_prefix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pacsoft_order_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pacsoft_order_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pacsoft_order_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pacsoft_order_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unifaun_customs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unifaun_customs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unifaun_customs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unifaun_customs_code'"
