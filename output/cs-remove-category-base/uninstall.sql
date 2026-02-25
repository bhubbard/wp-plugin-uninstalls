-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs_remove_category_base_rewrite_rules_flush', 'rewrite_rules');

