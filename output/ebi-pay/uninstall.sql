-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ebi_link_blocks_settings', 'vc_json_ebilink', 'config_installments_json_ebilink', 'site_key_ebilink', 'mid_ebilink', 'environment_dev_cyb_ebilink', 'jwt_ebilink', 'secret_key_ebilink', 'user_ebilink', 'password_ebilink', 'token_ebilink', 'name_enterprise_ebilink', 'currency_ebilink', 'activation_date_ebilink', 'creation_date_ebilink');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ebi_pay_blocks_card_name', 'ebi_pay_blocks_card_number', 'ebi_pay_blocks_card_expiry', 'ebi_pay_blocks_card_cvc', 'ebi_pay_blocks_card_vcq', 'ebi_pay_blocks_autoincrement_to_use', 'etn_ticket_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('ebi_pay_blocks_card_name', 'ebi_pay_blocks_card_number', 'ebi_pay_blocks_card_expiry', 'ebi_pay_blocks_card_cvc', 'ebi_pay_blocks_card_vcq', 'ebi_pay_blocks_autoincrement_to_use', 'etn_ticket_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('ebi_pay_blocks_card_name', 'ebi_pay_blocks_card_number', 'ebi_pay_blocks_card_expiry', 'ebi_pay_blocks_card_cvc', 'ebi_pay_blocks_card_vcq', 'ebi_pay_blocks_autoincrement_to_use', 'etn_ticket_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ebi_pay_blocks_card_name', 'ebi_pay_blocks_card_number', 'ebi_pay_blocks_card_expiry', 'ebi_pay_blocks_card_cvc', 'ebi_pay_blocks_card_vcq', 'ebi_pay_blocks_autoincrement_to_use', 'etn_ticket_price');

