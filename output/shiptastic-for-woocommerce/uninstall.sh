#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_shiptastic_enable_debug_mode'
wp option delete 'woocommerce_shiptastic_db_version'
wp option delete 'woocommerce_shiptastic_default_shipping_provider'
wp option delete 'woocommerce_shiptastic_shipper_address_country'
wp option delete 'woocommerce_shiptastic_return_address_country'
wp option delete 'woocommerce_shiptastic_return_reasons'
wp option delete 'woocommerce_shiptastic_return_address_address_1'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_shiptastic_version'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_shiptastic_upload_dir_suffix'
wp option delete 'woocommerce_shipping_debug_mode'
wp option delete 'woocommerce_store_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tmp_result'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_result'"
wp option delete 'woocommerce_shiptastic_packaging_reports'
wp option delete 'woocommerce_shiptastic_packaging_reports_running'
wp option delete 'woocommerce_shiptastic_enable_auto_packing'
wp option delete 'woocommerce_shiptastic_packing_balance_weights'
wp option delete 'woocommerce_shiptastic_packing_group_by_shipping_class'
wp option delete 'woocommerce_shiptastic_packing_inner_buffer_type'
wp option delete 'woocommerce_shiptastic_packing_inner_percentage_buffer'
wp option delete 'woocommerce_shiptastic_packing_inner_fixed_buffer'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_shiptastic_has_encryption_error'
wp option delete 'woocommerce_shiptastic_contact_phone'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete '_wc_shiptastic_setup_wizard_redirect'
wp transient delete 'woocommerce_shiptastic_packaging_report_counts'

