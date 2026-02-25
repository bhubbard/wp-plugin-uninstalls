#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsb_hub3_receiver_name'
wp option delete 'wsb_hub3_order_status'
wp option delete 'wsb_hub3_croatian_customers_only'
wp option delete 'wsb_hub3_receiver_iban'
wp option delete 'wc_wsb_hub3_admin_tab_img_type'
wp option delete 'wsb_hub3_img_padding'
wp option delete 'wsb_hub3_img_color'
wp option delete 'wsb_hub3_receiver_address'
wp option delete 'wsb_hub3_receiver_postcode'
wp option delete 'wsb_hub3_receiver_city'
wp option delete 'wsb_hub3_receiver_model'
wp option delete 'wsb_hub3_payment_purpose'
wp option delete 'wsb_hub3_payment_description'
wp option delete 'wsb_hub3_bank_accounts_display'
wp option delete 'wsb_hub3_display_details_thankyou'
wp option delete 'wsb_hub3_description_text'
wp option delete 'wsb_hub3_slip_width'
wp option delete 'wsb_hub3_barcode_width'
wp option delete 'wsb_hub3_barcode_text'
wp option delete 'wsb_hub3_display_details_order'
wp option delete 'wsb_hub3_display_details_email'
wp option delete 'wsb_hub3_slip_width_email'
wp option delete 'wsb_hub3_barcode_width_email'
wp option delete 'wsb_hub3_send_admin_slip'
wp option delete 'wsb_hub3_send_admin_barcode'
wp option delete 'wsb_hub3_receiver_reference_date'
wp option delete 'wsb_hub3_receiver_reference'
wp option delete 'wsb_hub3_receiver_reference_prefix'
wp option delete 'wsb_hub3_receiver_reference_sufix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsb_hub3_slip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsb_hub3_slip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsb_hub3_slip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsb_hub3_slip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsb_hub3_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsb_hub3_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsb_hub3_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsb_hub3_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsb_barcode_iban'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsb_barcode_iban'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsb_barcode_iban'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsb_barcode_iban'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'R1 račun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Ime tvrtke'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Adresa tvrtke'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsb_sender_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsb_sender_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsb_sender_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsb_sender_name'"
