-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smbw_settings', 'widget_social-media-badge-widget', 'smbw_openSelection', 'smbw_collapsible', 'smbw_allClosed', 'smbw_load_jquery_ui', 'smbw_load_scripts', 'smbw_style', 'smbw_faces_facebook', 'smbw_stream_facebook', 'smbw_tweets', 'smbw_live_twitter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smbw_plugin_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('smbw_plugin_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('smbw_plugin_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smbw_plugin_ignore_notice');

