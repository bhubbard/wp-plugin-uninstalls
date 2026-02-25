-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('debug_bar_rewrite_rules_installed', 'debug_bar_rewrite_rules_filters_list', 'rewrite_rules');

