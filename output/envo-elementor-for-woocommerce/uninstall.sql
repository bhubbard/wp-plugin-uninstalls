-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etww_do_activation_redirect', 'etww_active_time', 'etww_template_info');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', 'etww_pro_promo_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', 'etww_pro_promo_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', 'etww_pro_promo_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_location', '_elementor_conditions', '_wp_page_template', 'etww_pro_promo_message');

