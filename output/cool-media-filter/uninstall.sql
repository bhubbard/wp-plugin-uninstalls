-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('category_item_access_by_role', 'coolmedia_role_add_error_message');

