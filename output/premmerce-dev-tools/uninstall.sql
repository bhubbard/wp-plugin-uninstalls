-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_children';

