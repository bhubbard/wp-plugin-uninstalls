-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codexpert-blog-json', 'restrict-elementor-widgets-docs-json', '_site_transient_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

