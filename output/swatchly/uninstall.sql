-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swatchly_diagnostic_data_agreed', 'swatchly_diagnostic_data_notice', 'swatchly_delete_data_fetch_cache', 'force_update_swatchly_notice_info', 'swatchly_rating_already_rated', 'swatchly_options', 'csf_demo_mode', 'swatchly_installed', 'swatchly_version', 'swatchly_notice_info', 'swatchly_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swatchly_product_meta', 'swatchly_color', 'swatchly_enable_multi_color', 'swatchly_color_2', 'swatchly_image', '_product_attributes', 'swatchly_tooltip', 'swatchly_tooltip_text', 'swatchly_tooltip_image', 'swatchly_tooltip_image_size', 'swatchly_image_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swatchly_product_meta', 'swatchly_color', 'swatchly_enable_multi_color', 'swatchly_color_2', 'swatchly_image', '_product_attributes', 'swatchly_tooltip', 'swatchly_tooltip_text', 'swatchly_tooltip_image', 'swatchly_tooltip_image_size', 'swatchly_image_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swatchly_product_meta', 'swatchly_color', 'swatchly_enable_multi_color', 'swatchly_color_2', 'swatchly_image', '_product_attributes', 'swatchly_tooltip', 'swatchly_tooltip_text', 'swatchly_tooltip_image', 'swatchly_tooltip_image_size', 'swatchly_image_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swatchly_product_meta', 'swatchly_color', 'swatchly_enable_multi_color', 'swatchly_color_2', 'swatchly_image', '_product_attributes', 'swatchly_tooltip', 'swatchly_tooltip_text', 'swatchly_tooltip_image', 'swatchly_tooltip_image_size', 'swatchly_image_size');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

