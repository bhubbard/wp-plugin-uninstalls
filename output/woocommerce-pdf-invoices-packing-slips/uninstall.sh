#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_bacs_accounts'
wp option delete 'wpo_wcpdf_review_notice_dismissed'
wp option delete 'wpo_wcpdf_review_notice_shown'
wp option delete 'wpo_wcpdf_install_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpo_wcpdf_count_%'"
wp option delete 'wpo_wcpdf_documents_settings_invoice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpo_wcpdf_documents_settings_%'"
wp option delete 'wpo_wcpdf_settings_debug'
wp option delete 'german_market_product_images_in_order'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wpo_wcpdf_settings_general'
wp option delete 'wpo_wcpdf_general_settings'
wp option delete 'wpo_wcpdf_template_settings'
wp option delete 'wpo_wcpdf_next_invoice_number'
wp option delete 'wpo_wcpdf_debug_settings'
wp option delete 'ubl_wc_general'
wp option delete 'wpo_wcpdf_documents_settings_invoice_ubl'
wp option delete 'ubl_wc_taxes'
wp option delete 'wpo_wcpdf_settings_ubl_taxes'
wp option delete 'wpo_wcpdf_dismiss_shop_address_notice'
wp option delete 'wpo_ips_edi_tax_settings'
wp option delete 'wpo_ips_edi_settings'
wp option delete 'wpo_wcpdf_no_dir_error'
wp option delete 'wpo_wcpdf_random_string'
wp option delete 'wpo_wcpdf_dismiss_requirements_notice'
wp option delete 'wpocore_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%::last_time'"
wp option delete 'wpo_wcpdf_hide_attachments_hint'
wp option delete 'wpo_wcpdf_extensions_license_cache'
wp option delete 'wpo_wcpdf_installed_template_paths'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wpo_wcpdf_hide_promo_ad'
wp option delete 'wpo_wcpdf_hide_extensions_ad'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_country'
wp option delete 'woocommerce_store_state'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpo_wcpdf_hide_nginx_notice'
wp option delete 'wpo_wcpdf_hide_mailpoet_notice'
wp option delete 'wpo_wcpdf_hide_rtl_notice'
wp option delete 'wpo_wcpdf_unstable_version_state'

# Delete Transients
wp transient delete 'wpo_wcpdf_new_install'
wp transient delete 'wpo_wcpdf_subfolder_fonts_has_files'
wp transient delete 'wpo_wcpdf_flush_rewrite_rules'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peppol_endpoint_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peppol_endpoint_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peppol_endpoint_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peppol_endpoint_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'peppol_endpoint_eas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'peppol_endpoint_eas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'peppol_endpoint_eas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'peppol_endpoint_eas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpo_ips_checkout_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpo_ips_checkout_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpo_ips_checkout_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpo_ips_checkout_field'"
