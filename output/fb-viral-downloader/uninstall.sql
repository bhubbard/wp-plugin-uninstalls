-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fbSocialClientId', 'dc_fb_viral_downloader_general_settings_name', 'dc_fb_viral_downloader_logs_settings_name', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('facebook_count', '_download_count', '_share_file', '_share_google', '_share_facebook', '_share_twitter', '_share_url', '_share_caption', '_share_description', 'google_count', 'twitter_count', '_featured', '_members', '_redirect', 'viraldownloader_share_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('facebook_count', '_download_count', '_share_file', '_share_google', '_share_facebook', '_share_twitter', '_share_url', '_share_caption', '_share_description', 'google_count', 'twitter_count', '_featured', '_members', '_redirect', 'viraldownloader_share_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('facebook_count', '_download_count', '_share_file', '_share_google', '_share_facebook', '_share_twitter', '_share_url', '_share_caption', '_share_description', 'google_count', 'twitter_count', '_featured', '_members', '_redirect', 'viraldownloader_share_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('facebook_count', '_download_count', '_share_file', '_share_google', '_share_facebook', '_share_twitter', '_share_url', '_share_caption', '_share_description', 'google_count', 'twitter_count', '_featured', '_members', '_redirect', 'viraldownloader_share_data');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

