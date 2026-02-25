#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_pr_dhl_paket_settings'
wp option delete 'woocommerc_stc_dhl_import_finished'
wp option delete 'woocommerce_shiptastic_shipper_address_country'
wp option delete 'woocommerce_shiptastic_return_address_country'
wp option delete '_wcdpi_settings_general'
wp option delete 'woocommerce_stc_internetmarke_import_finished'
wp option delete '_wcdpi_settings_portokasse'
wp option delete '_wcdpi_settings_internetmarke_1c4a'
wp option delete 'woocommerce_shiptastic_dhl_version'
wp option delete 'woocommerce_stc_dhl_enable_legacy_soap'
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'woocommerce_shiptastic_dhl_enable_legacy_soap'
wp option delete 'woocommerce_checkout_address_2_field'

# Delete Transients
wp transient delete '_wc_stc_dhl_im_products_refresh_error'
wp transient delete '_wc_stc_dhl_im_page_formats_refresh_error'
wp transient delete 'wc_stc_dhl_portokasse_balance'
wp transient delete 'wc_stc_dhl_im_current_page_formats'
wp transient delete 'woocommerce_stc_dhl_paket_api_access_token'
wp transient delete 'wc_stc_dhl_im_products_expire'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_dhl_postnumber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_parcelshop_post_number'"
