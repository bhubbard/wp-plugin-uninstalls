-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaleidoscope_api_key', 'kaleidoscope_playlist_width', 'kaleidoscope_playlist_height', 'kaleidoscope_playlist_background_color', 'kaleidoscope_playlist_background_transparency', 'kaleidoscope_playlist_border', 'kaleidoscope_playlist_border_color', 'kaleidoscope_playlist_autoplay', 'kaleidoscope_playlist_interval', 'kaleidoscope_playlist_animation', 'kaleidoscope_playlist_caption', 'kaleidoscope_playlist_image_fit', 'kaleidoscope_playlist_navigation');

