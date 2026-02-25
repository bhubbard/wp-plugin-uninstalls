-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ytc_width', 'ytc_width_value', 'ytc_width_ratio', 'ytc_autoplay', 'ytc_volume', 'ytc_suggestedquality', 'ytc_controls', 'ytc_showinfo', 'ytc_autohide', 'ytc_theme', 'ytc_color', 'ytc_modestbranding', 'ytc_iv_load_policy', 'ytc_loop', 'ytc_playbackrate', 'ytc_rel', 'ytc_disableclick', 'ytc_lightbox', 'ytc_version');
DELETE FROM wp_options WHERE option_name LIKE 'ytc_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ytc_title', 'ytc_description', 'ytc_channel', 'ytc_definition', 'ytc_publish_date', 'ytc_time', 'ytc_seconds', 'ytc_video', 'ytc_url', 'ytc_start', 'ytc_end', 'ytc_width', 'ytc_width_value', 'ytc_width_ratio', 'ytc_autoplay', 'ytc_volume', 'ytc_suggestedquality', 'ytc_controls', 'ytc_showinfo', 'ytc_autohide', 'ytc_theme', 'ytc_color', 'ytc_modestbranding', 'ytc_iv_load_policy', 'ytc_loop', 'ytc_playbackrate', 'ytc_rel', 'ytc_disableclick', 'ytc_lightbox', 'ytc_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('ytc_title', 'ytc_description', 'ytc_channel', 'ytc_definition', 'ytc_publish_date', 'ytc_time', 'ytc_seconds', 'ytc_video', 'ytc_url', 'ytc_start', 'ytc_end', 'ytc_width', 'ytc_width_value', 'ytc_width_ratio', 'ytc_autoplay', 'ytc_volume', 'ytc_suggestedquality', 'ytc_controls', 'ytc_showinfo', 'ytc_autohide', 'ytc_theme', 'ytc_color', 'ytc_modestbranding', 'ytc_iv_load_policy', 'ytc_loop', 'ytc_playbackrate', 'ytc_rel', 'ytc_disableclick', 'ytc_lightbox', 'ytc_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('ytc_title', 'ytc_description', 'ytc_channel', 'ytc_definition', 'ytc_publish_date', 'ytc_time', 'ytc_seconds', 'ytc_video', 'ytc_url', 'ytc_start', 'ytc_end', 'ytc_width', 'ytc_width_value', 'ytc_width_ratio', 'ytc_autoplay', 'ytc_volume', 'ytc_suggestedquality', 'ytc_controls', 'ytc_showinfo', 'ytc_autohide', 'ytc_theme', 'ytc_color', 'ytc_modestbranding', 'ytc_iv_load_policy', 'ytc_loop', 'ytc_playbackrate', 'ytc_rel', 'ytc_disableclick', 'ytc_lightbox', 'ytc_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ytc_title', 'ytc_description', 'ytc_channel', 'ytc_definition', 'ytc_publish_date', 'ytc_time', 'ytc_seconds', 'ytc_video', 'ytc_url', 'ytc_start', 'ytc_end', 'ytc_width', 'ytc_width_value', 'ytc_width_ratio', 'ytc_autoplay', 'ytc_volume', 'ytc_suggestedquality', 'ytc_controls', 'ytc_showinfo', 'ytc_autohide', 'ytc_theme', 'ytc_color', 'ytc_modestbranding', 'ytc_iv_load_policy', 'ytc_loop', 'ytc_playbackrate', 'ytc_rel', 'ytc_disableclick', 'ytc_lightbox', 'ytc_version');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ytc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ytc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ytc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ytc_%';

