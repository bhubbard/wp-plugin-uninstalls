-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('forvoyez_plugin_activated', 'forvoyez_plugin_version', 'forvoyez_flush_rewrite_rules', 'forvoyez_auto_analyze_enabled', 'forvoyez_encrypted_api_key', 'forvoyez_context', 'forvoyez_language', 'forvoyez_bulk_analyze_images', 'forvoyez_api_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_forvoyez_analyzed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_forvoyez_analyzed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_forvoyez_analyzed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_forvoyez_analyzed');

