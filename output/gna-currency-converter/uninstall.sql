-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('g_cc_configs', 'g_currency_converter_configs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ex_rate_from_cur', 'ex_rate_to_cur', 'ex_rate_rate', 'meta_image_from', 'meta_image_to', 'ex_rate_flag_from');
DELETE FROM wp_usermeta WHERE meta_key IN ('ex_rate_from_cur', 'ex_rate_to_cur', 'ex_rate_rate', 'meta_image_from', 'meta_image_to', 'ex_rate_flag_from');
DELETE FROM wp_termmeta WHERE meta_key IN ('ex_rate_from_cur', 'ex_rate_to_cur', 'ex_rate_rate', 'meta_image_from', 'meta_image_to', 'ex_rate_flag_from');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ex_rate_from_cur', 'ex_rate_to_cur', 'ex_rate_rate', 'meta_image_from', 'meta_image_to', 'ex_rate_flag_from');

