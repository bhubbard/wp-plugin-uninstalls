-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rcb_flush_rewrite_rules', 'Category_Prefix');

