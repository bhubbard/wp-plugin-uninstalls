-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_notice_wpematico_addons', 'WPeMatico_Options', 'wpem_show_locally_addons', 'active_sitewide_plugins', 'WPeMatico_danger', 'wpematico_license_keys', 'wpematico_license_status', 'wpematico_db_version', 'wpematico_level_tnotifications', 'icon_eyes_status', 'wpematico_lastlog_disabled', 'wpematico_dismiss_mdm_notice', 'wpematico_level_snotifications', 'wpematico_dismiss_wizard_notice', 'wpematico_notices', 'wpem_hide_reviews', 'wpem_menu_position', 'update_plugins', 'etruel_wpematico_addons_data', '_wpematico_user_has_seen_welcome_page', '_wpematico_activation_redirect', '_etruel_wpem_reviews_data', 'wpematico_encoding_hosts');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpematico_subscription_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpematico_i18n_notif_obj_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lastrun', 'postscount', 'lastpostscount', 'last_campaign_log', '_wp_attachment_image_alt', 'cronnextrun', 'campaign_data', 'wpe_campaignid', 'wpe_feed', 'wpe_sourcepermalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('lastrun', 'postscount', 'lastpostscount', 'last_campaign_log', '_wp_attachment_image_alt', 'cronnextrun', 'campaign_data', 'wpe_campaignid', 'wpe_feed', 'wpe_sourcepermalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('lastrun', 'postscount', 'lastpostscount', 'last_campaign_log', '_wp_attachment_image_alt', 'cronnextrun', 'campaign_data', 'wpe_campaignid', 'wpe_feed', 'wpe_sourcepermalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lastrun', 'postscount', 'lastpostscount', 'last_campaign_log', '_wp_attachment_image_alt', 'cronnextrun', 'campaign_data', 'wpe_campaignid', 'wpe_feed', 'wpe_sourcepermalink');

