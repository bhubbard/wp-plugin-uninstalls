#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catalogx_plugin_version'
wp option delete 'catalogx_plugin_activated'
wp option delete 'catalogx_enquiry_form_customization_settings'
wp option delete 'catalogx_plugin_installed'
wp option delete 'catalogx_tour_active'
wp option delete 'catalogx_tour_version'
wp option delete 'catalogx_request_quote_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_catalogx_session_%'"
wp option delete 'mvx_catalog_general_tab_settings'
wp option delete 'catalogx_all_settings_settings'
wp option delete 'catalogx_enquiry_email_temp_settings'
wp option delete 'catalogx_enquiry_cart_page'
wp option delete 'wholesale_products_page'
wp option delete 'catalogx_pages_settings'
wp option delete 'catalogx_wholesale_registration_settings'
wp option delete 'catalogx_enquiry-catalog-customization_settings'
wp option delete 'catalogx_enquiry_catalog_customization_settings'
wp option delete 'catalogx_all-settings_settings'
wp option delete 'catalogx_enquiry-quote-exclusion_settings'
wp option delete 'catalogx_enquiry_quote_exclusion_settings'
wp option delete 'catalogx_enquiry-form-customization_settings'
wp option delete 'catalogx_enquiry-email-temp_settings'
wp option delete 'catalogx_wholesale-registration_settings'
wp option delete 'mvx_catalog_button_appearance_tab_settings'
wp option delete 'catalogx_tools_settings'
wp option delete 'mvx_catalog_enquiry_form_tab_settings'
wp option delete 'mvx_catalog_pro_enquiry_form_data'
wp option delete 'mvx_catalog_exclusion_tab_settings'
wp option delete 'woocommerce_catalog_enquiry_from_settings'
wp option delete 'woocommerce_catalog_enquiry_general_settings'
wp option delete 'woocommerce_catalog_enquiry_exclusion_settings'
wp option delete 'woocommerce_catalog_enquiry_button_appearence_settings'

# Delete Transients
wp transient delete 'variation_list'

# Clear Cron Jobs
wp cron event delete 'quote_clean_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_enquiry_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_enquiry_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_enquiry_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_enquiry_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mvx_vendor_catalog_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mvx_vendor_catalog_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mvx_vendor_catalog_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mvx_vendor_catalog_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catalog_per_product_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catalog_per_product_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catalog_per_product_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catalog_per_product_desc'"
