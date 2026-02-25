-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clwpuu_disable_comments', 'clwpuu_google_analytics', 'clwpuu_classic_widgets', 'clwpuu_classic_editor', 'clwpuu_maintenance_mode', 'clwpuu_disable_xmlrpc', 'clwpuu_regenerate_thumbnails', 'clwpuu_duplicate_page', 'clwpuu_maintenance_mode ');

