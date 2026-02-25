-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fiscalisation_training_mode_enabled', 'fiscalisation_refund_mode_enabled', 'fiscalisation_shipping_mode_enabled', 'fiscalisation_api_key', 'fiscalisation_shipping_mode_item_name', 'fiscalisation_training_mode_email', 'fiscalisation_default_tax_label');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE '%_proforma_status';
DELETE FROM wp_options WHERE option_name LIKE '%_proforma_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_purs';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vpfr_buyer_id_value', '_vpfr_buyer_id_code', '_verification_url', '_vpfr_wc_labels');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vpfr_buyer_id_value', '_vpfr_buyer_id_code', '_verification_url', '_vpfr_wc_labels');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vpfr_buyer_id_value', '_vpfr_buyer_id_code', '_verification_url', '_vpfr_wc_labels');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vpfr_buyer_id_value', '_vpfr_buyer_id_code', '_verification_url', '_vpfr_wc_labels');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_verification_url%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_verification_url%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_verification_url%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_verification_url%';

