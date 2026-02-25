-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('star_color', 'btn_color', 'display_number', 'sdvts_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('designation', 'country', 'star_rating', 'video_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('designation', 'country', 'star_rating', 'video_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('designation', 'country', 'star_rating', 'video_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('designation', 'country', 'star_rating', 'video_url');

