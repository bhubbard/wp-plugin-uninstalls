-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_list_url', 'shopping_cart_url', 'transact_url', 'user_account_url');

