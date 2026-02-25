-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('primal_auto_insert_display', 'primal_auto_insert_color', 'primal_external_links', 'primal_plugin_version');

