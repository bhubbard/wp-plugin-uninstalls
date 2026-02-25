-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_EX_FONTS_LIST', 'eepds_persian_date_shortcode_option');

