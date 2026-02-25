-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('matcha_extra_activated_notice', 'matcha_wishlist_table_checked');

