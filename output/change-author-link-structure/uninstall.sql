-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cals_settings', 'cals_author_base_buffer', 'rewrite_rules', 'cals_author_base', 'cals_version');

