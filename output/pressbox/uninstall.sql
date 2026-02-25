-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lh_pressbox_consumer_key', 'lh_pressbox_consumer_secret', 'lh_pressbox_access_token', 'lh_pressbox_access_token_secret', 'lh_pressbox_default_path', 'lh_pressbox_show_thumbnails', 'lh_pressbox_favorites', 'lh_pressbox_uid', 'lh_pressbox_oauth_token', 'lh_pressbox_oauth_token_secret', 'lh_pressbox_display_name', 'lh_pressbox_quota', 'lh_pressbox_shared', 'lh_pressbox_normal');

