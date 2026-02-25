-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coupg_mcapikey', 'coupg_maillists', 'coupg_default_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupg_header', 'coupg_description', 'coupg_button_text', 'coupg_default_email_text', 'coupg_privacy_statement', 'coupg_list', 'coupg_em_cofirm_page', 'coupg_upg_location_page', 'coupg_theme');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupg_header', 'coupg_description', 'coupg_button_text', 'coupg_default_email_text', 'coupg_privacy_statement', 'coupg_list', 'coupg_em_cofirm_page', 'coupg_upg_location_page', 'coupg_theme');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupg_header', 'coupg_description', 'coupg_button_text', 'coupg_default_email_text', 'coupg_privacy_statement', 'coupg_list', 'coupg_em_cofirm_page', 'coupg_upg_location_page', 'coupg_theme');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupg_header', 'coupg_description', 'coupg_button_text', 'coupg_default_email_text', 'coupg_privacy_statement', 'coupg_list', 'coupg_em_cofirm_page', 'coupg_upg_location_page', 'coupg_theme');

