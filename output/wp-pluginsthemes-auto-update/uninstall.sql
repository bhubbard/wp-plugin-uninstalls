-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpptau_themes_auto_update', 'wpptau_plugins_auto_update');

