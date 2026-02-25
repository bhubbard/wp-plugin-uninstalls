-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('category-thumbnail-list_order', 'category-thumbnail-list_ordertype');

