-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsatt_status', 'wsatt_attributes', 'wc_attribute_taxonomies');

