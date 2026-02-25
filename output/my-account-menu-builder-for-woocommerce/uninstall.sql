-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmab_flush_rewrite', 'wmab_white_label', 'wmab_menu_items');

