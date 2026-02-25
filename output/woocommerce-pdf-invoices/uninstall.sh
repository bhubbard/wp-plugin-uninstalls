#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bewpi_template_settings'
wp option delete 'bewpi_version'
wp option delete 'bewpi_install_date'
wp option delete 'bewpi_general_settings'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'bewpi-install-date'

# Delete Transients
wp transient delete 'bewpi-admin-notice-activation'
wp transient delete 'bewpi_next_invoice_number'
wp transient delete 'wpi_dismiss_notice_rate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bewpi_invoice_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bewpi_invoice_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bewpi_invoice_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bewpi_invoice_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bewpi_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bewpi_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bewpi_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bewpi_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bewpi_invoice_pdf_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bewpi_invoice_pdf_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bewpi_invoice_pdf_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bewpi_invoice_pdf_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bewpi_formatted_invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bewpi_formatted_invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bewpi_formatted_invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bewpi_formatted_invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bewpi_invoice_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bewpi_invoice_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bewpi_invoice_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bewpi_invoice_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_po_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_po_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_po_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_po_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bewpi_pdf_invoice_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bewpi_pdf_invoice_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bewpi_pdf_invoice_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bewpi_pdf_invoice_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
