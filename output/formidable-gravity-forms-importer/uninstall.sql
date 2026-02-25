-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_gforms_currency', 'rg_form_version', 'rg_gforms_captcha_type', 'rg_gforms_captcha_private_key', 'rg_gforms_captcha_public_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('frm_param', 'frm_type', 'frm_show_count', 'frm_form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('frm_param', 'frm_type', 'frm_show_count', 'frm_form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('frm_param', 'frm_type', 'frm_show_count', 'frm_form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('frm_param', 'frm_type', 'frm_show_count', 'frm_form_id');

