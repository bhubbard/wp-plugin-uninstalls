-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'simply_change_author_url_changed', 'add_simply_change_author_url_rules');

