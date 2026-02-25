-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eli_db_version', 'wdk_listing_page');
DELETE FROM wp_options WHERE option_name LIKE 'elementinvader_addons_for_elementor_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'eli_form_token_%';

