-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecp_date_last_active', 'ecp_date_last_timestamp', 'ecp_general_settings', 'ecp-library-post', 'ecp-event-add-time', 'ecp-offer-add-time', 'ecp_options', 'ecp_schedule_settings', 'ecp_frequency_schedules', 'ecp_native_profiles', 'ecp_twitter_profiles', 'buffer-already-connected', 'ecp-buffer-connected-profile', 'evergreen_content_date_last_active', 'evergreen_content_date_last_timestamp', 'ecp_plugin_activation_redirect', 'ecp_buffer_pre_profile', 'ecp_buffer_token', 'ecp_buffer_profiles', 'ecp_twitter_token', 'ecp_timezone', 'ecp_buffer_lifetime', 'ecp_cl_cat_active_ids', 'ecp_cl_cat_map');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_buffer_token';
DELETE FROM wp_options WHERE option_name LIKE '%_buffer_profiles';
DELETE FROM wp_options WHERE option_name LIKE '%_general_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_schedule_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_timezone';
DELETE FROM wp_options WHERE option_name LIKE '%_date_last_active';
DELETE FROM wp_options WHERE option_name LIKE '%_date_last_timestamp';
DELETE FROM wp_options WHERE option_name LIKE 'ecp_cl_cat_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecp-post-ref', 'ecp-post-media', 'ecp-post-profile', 'ecp-post-network', 'ecp-post-category', 'ecp-post-postType', 'ecp-post-buttonNew', 'ecp-post-buttonLinkNew', 'ecp-post-eventTitle', 'ecp-post-eventDate', 'ecp-post-eventAddTime', 'ecp-post-eventButton', 'ecp-post-eventButtonLink', 'ecp-post-eventTime', 'ecp-post-offerTitle', 'ecp-post-offerDate', 'ecp-post-offerAddTime', 'ecp-post-offerButton', 'ecp-post-offerButtonLink', 'ecp-post-offerTerm', 'ecp-post-offerTime', 'ecp-is-share', 'ecp-is-save-library', 'eg_content_fields', 'ecp-wp-cron-notice-dismissed', 'ecp-getting-started-dismissed', 'ecp-wp-translate-notice-dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecp-post-ref', 'ecp-post-media', 'ecp-post-profile', 'ecp-post-network', 'ecp-post-category', 'ecp-post-postType', 'ecp-post-buttonNew', 'ecp-post-buttonLinkNew', 'ecp-post-eventTitle', 'ecp-post-eventDate', 'ecp-post-eventAddTime', 'ecp-post-eventButton', 'ecp-post-eventButtonLink', 'ecp-post-eventTime', 'ecp-post-offerTitle', 'ecp-post-offerDate', 'ecp-post-offerAddTime', 'ecp-post-offerButton', 'ecp-post-offerButtonLink', 'ecp-post-offerTerm', 'ecp-post-offerTime', 'ecp-is-share', 'ecp-is-save-library', 'eg_content_fields', 'ecp-wp-cron-notice-dismissed', 'ecp-getting-started-dismissed', 'ecp-wp-translate-notice-dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecp-post-ref', 'ecp-post-media', 'ecp-post-profile', 'ecp-post-network', 'ecp-post-category', 'ecp-post-postType', 'ecp-post-buttonNew', 'ecp-post-buttonLinkNew', 'ecp-post-eventTitle', 'ecp-post-eventDate', 'ecp-post-eventAddTime', 'ecp-post-eventButton', 'ecp-post-eventButtonLink', 'ecp-post-eventTime', 'ecp-post-offerTitle', 'ecp-post-offerDate', 'ecp-post-offerAddTime', 'ecp-post-offerButton', 'ecp-post-offerButtonLink', 'ecp-post-offerTerm', 'ecp-post-offerTime', 'ecp-is-share', 'ecp-is-save-library', 'eg_content_fields', 'ecp-wp-cron-notice-dismissed', 'ecp-getting-started-dismissed', 'ecp-wp-translate-notice-dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecp-post-ref', 'ecp-post-media', 'ecp-post-profile', 'ecp-post-network', 'ecp-post-category', 'ecp-post-postType', 'ecp-post-buttonNew', 'ecp-post-buttonLinkNew', 'ecp-post-eventTitle', 'ecp-post-eventDate', 'ecp-post-eventAddTime', 'ecp-post-eventButton', 'ecp-post-eventButtonLink', 'ecp-post-eventTime', 'ecp-post-offerTitle', 'ecp-post-offerDate', 'ecp-post-offerAddTime', 'ecp-post-offerButton', 'ecp-post-offerButtonLink', 'ecp-post-offerTerm', 'ecp-post-offerTime', 'ecp-is-share', 'ecp-is-save-library', 'eg_content_fields', 'ecp-wp-cron-notice-dismissed', 'ecp-getting-started-dismissed', 'ecp-wp-translate-notice-dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ecp-is-check-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ecp-is-check-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ecp-is-check-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ecp-is-check-%';

