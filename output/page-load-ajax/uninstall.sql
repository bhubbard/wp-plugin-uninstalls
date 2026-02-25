-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pla_title', 'pla_content', 'rewrite_rules', 'pla_type', 'pla_menu', 'pla_update');

