-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fv_top_level_categories_rewrite_rules_flush', 'rewrite_rules', 'fv_top_level_cats');

