-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_vimeo_cron_interval', 'wc_settings_vimeo_transient_duration', 'wc_settings_vimeo_client_id', 'wc_settings_vimeo_client_secret', 'wc_settings_vimeo_access_token', 'wc_vimeo_videos_main_transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_vimeo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_vimeo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_vimeo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_vimeo_%';

