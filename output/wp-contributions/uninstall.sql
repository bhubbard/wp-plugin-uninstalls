-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wp-contributions-codex-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-contributions-codex-count-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-contributions-core%';
DELETE FROM wp_options WHERE option_name LIKE 'wp-contributions-core-count-%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_contributions_plugin_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_contributions_plugin_author_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_contributions_theme_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_contributions_theme_author_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_contributions_themes_%';

