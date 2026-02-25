-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('svg_playlistline', 'svg_playlistpage', 'svg_embed', 'svg_playlistthumbnailsize', 'svg_playlisttitle', 'svg_playlistplayback', 'svg_css');
DELETE FROM wp_options WHERE option_name LIKE '%_message';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'wpf_role_%';

