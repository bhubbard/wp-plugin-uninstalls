-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abovewp_bulk_attribute_change_options', 'abovewp_bulk_attribute_change_progress', 'abovewp_bulk_attribute_change_all_products');

