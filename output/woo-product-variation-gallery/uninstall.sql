-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rtwpvg_pro_active', 'RTWPVG_VERSION', 'rtwpvg', 'woobundle_black_friday_offer_2024', 'rtwpvg_ny_2023', 'rtwpvg_plugin_activation_time', 'rtwpvg_spare_me', 'rtwpvg_remind_me', 'rtwpvg_rated', 'rtwpvg_pro_activate');
DELETE FROM wp_options WHERE option_name LIKE 'dismiss_bf_woobundle_notice_%';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rtwpvg_disable_valiation_gallery', 'rtwpvg_images', '_wcml_duplicate_of_variation', '_wp_attachment_image_alt', '_wc_attachment_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rtwpvg_disable_valiation_gallery', 'rtwpvg_images', '_wcml_duplicate_of_variation', '_wp_attachment_image_alt', '_wc_attachment_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rtwpvg_disable_valiation_gallery', 'rtwpvg_images', '_wcml_duplicate_of_variation', '_wp_attachment_image_alt', '_wc_attachment_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rtwpvg_disable_valiation_gallery', 'rtwpvg_images', '_wcml_duplicate_of_variation', '_wp_attachment_image_alt', '_wc_attachment_source');

