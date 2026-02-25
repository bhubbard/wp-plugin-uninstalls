-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooproductscroller_prodcat', 'wooproductscroller_no_of_products', 'wooproductscroller_orderBy', 'wooproductscroller_order', 'wooproductscroller_title');

