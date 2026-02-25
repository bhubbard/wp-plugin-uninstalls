-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notable_options', 'notable_fark_category', 'notable_image_path', 'notable_spacer_string');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_show';
DELETE FROM wp_options WHERE option_name LIKE '%_header';
DELETE FROM wp_options WHERE option_name LIKE '%_post_url';

