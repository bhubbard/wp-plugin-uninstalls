-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsb_hub3_receiver_name', 'wsb_hub3_order_status', 'wsb_hub3_croatian_customers_only', 'wsb_hub3_receiver_iban', 'wc_wsb_hub3_admin_tab_img_type', 'wsb_hub3_img_padding', 'wsb_hub3_img_color', 'wsb_hub3_receiver_address', 'wsb_hub3_receiver_postcode', 'wsb_hub3_receiver_city', 'wsb_hub3_receiver_model', 'wsb_hub3_payment_purpose', 'wsb_hub3_payment_description', 'wsb_hub3_bank_accounts_display', 'wsb_hub3_display_details_thankyou', 'wsb_hub3_description_text', 'wsb_hub3_slip_width', 'wsb_hub3_barcode_width', 'wsb_hub3_barcode_text', 'wsb_hub3_display_details_order', 'wsb_hub3_display_details_email', 'wsb_hub3_slip_width_email', 'wsb_hub3_barcode_width_email', 'wsb_hub3_send_admin_slip', 'wsb_hub3_send_admin_barcode', 'wsb_hub3_receiver_reference_date', 'wsb_hub3_receiver_reference', 'wsb_hub3_receiver_reference_prefix', 'wsb_hub3_receiver_reference_sufix');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsb_hub3_slip', '_wsb_hub3_barcode', '_wsb_barcode_iban', 'R1 račun', 'Ime tvrtke', 'Adresa tvrtke', '_wsb_sender_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsb_hub3_slip', '_wsb_hub3_barcode', '_wsb_barcode_iban', 'R1 račun', 'Ime tvrtke', 'Adresa tvrtke', '_wsb_sender_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsb_hub3_slip', '_wsb_hub3_barcode', '_wsb_barcode_iban', 'R1 račun', 'Ime tvrtke', 'Adresa tvrtke', '_wsb_sender_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsb_hub3_slip', '_wsb_hub3_barcode', '_wsb_barcode_iban', 'R1 račun', 'Ime tvrtke', 'Adresa tvrtke', '_wsb_sender_name');

