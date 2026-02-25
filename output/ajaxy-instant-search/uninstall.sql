-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajaxy_sf_styles', 'ajaxy_sf_template_more', 'ajaxy-dismiss');
DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_setting_%';
DELETE FROM wp_options WHERE option_name LIKE 'ajaxy_sf_style_%';

