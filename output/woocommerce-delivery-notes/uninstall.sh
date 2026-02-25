#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcdn_template_type'
wp option delete 'woocommerce_version'
wp option delete 'wcdn_deliverynote_customization'
wp option delete 'wcdn_invoice_number_count'
wp option delete 'wcdn_invoice_customization'
wp option delete 'wcdn_receipt_customization'
wp option delete 'wcdn_template_type_invoice'
wp option delete 'wcdn_template_type_receipt'
wp option delete 'wcdn_template_type_delivery-note'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_customization'"
wp option delete 'wcdn_general_settings'
wp option delete 'wcdn_company_logo_image_id'
wp option delete 'wcdn_custom_company_name'
wp option delete 'wcdn_company_address'
wp option delete 'wcdn_personal_notes'
wp option delete 'wcdn_policies_conditions'
wp option delete 'wcdn_footer_imprint'
wp option delete 'wcdn_print_order_page_endpoint'
wp option delete 'wcdn_email_print_link'
wp option delete 'wcdn_admin_email_print_link'
wp option delete 'wcdn_print_button_on_view_order_page'
wp option delete 'wcdn_print_button_on_my_account_page'
wp option delete 'wcdn_rtl_invoice'
wp option delete 'wcdn_invoice_number_suffix'
wp option delete 'wcdn_invoice_number_prefix'
wp option delete 'wcdn_deliverynote_settings'
wp option delete 'wcdn_invoice_settings'
wp option delete 'wcdn_receipt_settings'
wp option delete 'wcdn_template_style'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcdn_template_type_%'"
wp option delete 'wcdn_template_type_delivery_note'
wp option delete 'wcdn_version'
wp option delete 'wcdn_document_settings'
wp option delete 'wcdn_invoice_number_start'
wp option delete 'wcdn_invoice_number_counter'
wp option delete 'wcdn_invoice_template_type'
wp option delete 'wcdn_receipt_template_type'
wp option delete 'wcdn_delivery_note_template_type'
wp option delete 'wcdn_create_invoice_number'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'wcdn_allow_tracking'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'wcdn_company_address '
wp option delete 'wcdn_ts_tracker_last_send'

# Delete Transients
wp transient delete 'wcdn_flush_rewrite_rules'

# Clear Cron Jobs

