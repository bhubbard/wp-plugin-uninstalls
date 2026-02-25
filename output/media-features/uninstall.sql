-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_features_plugin_version', 'media_features_jpeg_quality', 'media_features_crop', 'media_features_resize');

