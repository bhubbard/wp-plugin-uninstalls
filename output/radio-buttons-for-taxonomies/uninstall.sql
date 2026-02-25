-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('radio_button_for_taxonomies_options');
DELETE FROM wp_options WHERE option_name LIKE 'default_%';

