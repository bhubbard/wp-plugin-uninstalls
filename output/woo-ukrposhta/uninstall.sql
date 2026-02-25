-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('morkva_ukrposhta_default_payer', 'invoice_addweight', 'sendtype', 'sendwtype', 'up_sender_type', 'up_company_name', 'edrpou', 'names1', 'names2', 'up_tin', 'woocommerce_store_postcode', 'phone', 'production_bearer_ecom', 'production_cp_token', 'production_bearer_status_tracking', 'invoice_up[]', 'proptype', 'woocommerce_default_country', 'morkva_ukrposhta_db_version', 'MORKVA_UKRPOSHTA_VERSION', 'morkva_ukrposhta_state', 'mrkvup_checkout_fields_position', 'morkva_ukrposhta_address_shipping', 'morkva_ukrposhta_send_statistic', '_transient_shipping-transient-version', 'morkva_ukrposhta_up_lang', 'senduptype', 'woocommerce_weight_unit', 'mrkvup_default_order_weight ', 'mrkvup_default_order_length ', 'mrkvup_default_order_height', 'mrkvup_default_order_height ', 'mrkvup_default_order_width', ' sendtype', 'up_invoice_description', 'morkva_ukrposhta_transfer_postpay_to_sender_bank_account', 'morkva_ukrposhta_default_price', 'morkva_ukrposhta_up_api_key', 'morkva_ukrposhta_spinner_color', 'zone_ukrposhta', 'mrkvup_default_order_weight', 'mrkvup_default_order_length', 'ukrposhta_calculate_rates_currency', 'names3', 'flat', 'invoice_weight', 'mrkvup_sender_iban', 'morkvaup_email_template', 'morkvaup_email_subject');
DELETE FROM wp_options WHERE option_name LIKE 'morkva_ukrposhta_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ukrposhta_ttn');
DELETE FROM wp_usermeta WHERE meta_key IN ('ukrposhta_ttn');
DELETE FROM wp_termmeta WHERE meta_key IN ('ukrposhta_ttn');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ukrposhta_ttn');

