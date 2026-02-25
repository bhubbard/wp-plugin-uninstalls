-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eab-codex-search-submenu', 'eab-admin-searches', 'eab-wp-forums', 'eab-wp-beginner', 'eab-custom-menu', 'eab-genesis-menu');

