-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('customlogin_consumer_key', 'customlogin_consumer_secret', 'customlogin_siret_access_token', 'customlogin_siret_token_expiry', 'customlogin_verification_type', 'customlogin_duns_number', 'customlogin_form_max_width', 'customlogin_form_background_color', 'customlogin_form_text_color', 'customlogin_form_border_color', 'customlogin_form_border_width', 'customlogin_form_border_style', 'customlogin_form_border_padding', 'customlogin_link_color', 'customlogin_link_underline_style', 'customlogin_link_text_normal', 'customlogin_link_text', 'customlogin_show_buttons', 'customlogin_domain', 'customlogin_form_style', 'customlogin_logo_text', 'customlogin_desc_id', 'simple_editor_control_logins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone', 'last_name', 'first_name', 'just_registered', 'company_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone', 'last_name', 'first_name', 'just_registered', 'company_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone', 'last_name', 'first_name', 'just_registered', 'company_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone', 'last_name', 'first_name', 'just_registered', 'company_name');

