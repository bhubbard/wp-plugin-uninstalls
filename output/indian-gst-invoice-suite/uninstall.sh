#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_tax_classes'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_tax_based_on'

# Delete Transients
wp transient delete 'indian_gst_restore_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indian_gst_hsn_sac'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indian_gst_hsn_sac'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indian_gst_hsn_sac'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indian_gst_hsn_sac'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indian_gst_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indian_gst_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indian_gst_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indian_gst_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_indian_gst_model_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_indian_gst_model_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_indian_gst_model_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_indian_gst_model_number'"
