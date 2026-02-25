#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sqrip_settings'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'

# Delete Transients
wp transient delete 'sqrip_admin_action_errors'

# Clear Cron Jobs
wp cron event delete 'sqrip_media_cleaner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_qr_pdf_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_qr_pdf_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_qr_pdf_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_qr_pdf_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_pdf_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_pdf_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_pdf_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_pdf_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_pdf_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_pdf_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_pdf_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_pdf_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iban_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iban_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iban_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iban_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_reference_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_reference_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_reference_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_reference_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_pdf_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_pdf_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_pdf_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_pdf_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqrip_png_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqrip_png_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqrip_png_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqrip_png_file_url'"
