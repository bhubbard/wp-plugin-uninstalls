-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccpo_order_managers', 'ccpo_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'ccpo_category_ordering_%';

