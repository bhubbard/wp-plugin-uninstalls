-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-wiki-tooltip-settings-base', 'wp-wiki-tooltip-settings-error', 'wp-wiki-tooltip-settings-design', 'wp-wiki-tooltip-settings-thumb', 'wp-wiki-tooltip-settings');

