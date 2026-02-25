-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brid_options', 'widget_brid_playlist_widget', 'embed_size_w');

