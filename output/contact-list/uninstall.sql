-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contact_list_settings', 'contact-list-sc', 'contact_list_how_to_show_notice', 'contact_list_rating_show_notice_now_v2', 'contact_list_rating_notice_status_v2', 'contact_list_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'contact_list_rating_notice_later_seconds_v2', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cl_first_name', '_cl_last_name', '_cl_job_title', '_cl_email', '_cl_phone', '_cl_linkedin_url', '_cl_twitter_url', '_cl_facebook_url', '_cl_instagram_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cl_first_name', '_cl_last_name', '_cl_job_title', '_cl_email', '_cl_phone', '_cl_linkedin_url', '_cl_twitter_url', '_cl_facebook_url', '_cl_instagram_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cl_first_name', '_cl_last_name', '_cl_job_title', '_cl_email', '_cl_phone', '_cl_linkedin_url', '_cl_twitter_url', '_cl_facebook_url', '_cl_instagram_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cl_first_name', '_cl_last_name', '_cl_job_title', '_cl_email', '_cl_phone', '_cl_linkedin_url', '_cl_twitter_url', '_cl_facebook_url', '_cl_instagram_url', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cl_custom_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cl_custom_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cl_custom_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cl_custom_field_%';

