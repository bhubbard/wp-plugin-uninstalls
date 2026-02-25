-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgpb-hide-license-notice-banner', 'sgpb-metabox-banner-remote-get', 'sgpb_extensions_updated', 'sgpb-disable-custom-js', 'SGPB_POPUP_VERSION', 'sgpb_alert_problems', 'sgpbConvertToNewVersion', 'sgpbUnsubscribeColumnFixed', 'sgpbUnsubscribeColumn', 'sgpbUnsubscribeTokenColumnFixed', 'sgpb-user-roles', 'sgpbActivateExtensions', 'SGPB_NEWSLETTER_DATA', 'sgpb-secret-code', 'sgpb-dont-delete-data', 'sgpb-enable-debug-mode', 'sgpb-disable-analytics-general', 'sgpb-disable-enctyption-data', 'SGPBCloseReviewPopup-notification', 'SGPBMaxOpenCount', 'SGPBOpenNextTime', 'SGPBUsageDays', 'SgpbCounter', 'sgpbDontShowAskReviewBanner', 'sgpb-hide-support-banner', 'sgpb-new-subscriber', 'popupPreviewId', 'sgpbConvertedIds', 'SG_MAILCHIMP_API_KEY', 'SGPB_MAILCHIMP_API_KEY', 'sgAccessToken', 'requestTokenSecret', 'sgAccessTokenSecret', 'sgpbRequestTokenSecret', 'sgpbAccessTokenSecret', 'sgpbAccessToken', 'SGPBInstallDate', 'sgpbExtensionsInfo', 'sgpb-disable-disable-custom-js', 'sgpb-all-notifications-data', 'sgpb-all-active-notifications', 'sgpb-all-dismissed-notifications', 'sgpb-all-removed-notifications', 'SGPB_INACTIVE_EXTENSIONS', 'sgpbModifiedRegisteredPluginsPaths', 'SG_POPUP_BUILDER_REGISTERED_PLUGINS', 'active_sitewide_plugins', 'sgpopup_customPostType_categories', 'sgpb-hide_disable-custom-js-warning', 'sgpb-hide_disable-injection-warning');
DELETE FROM wp_options WHERE option_name IN ('sgpbImportSubscribersMessaage', 'update_plugins', 'sgpb_subscriptionplus_status');
DELETE FROM wp_options WHERE option_name LIKE 'SGPB_NEWSLETTER_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgpbSaveOldData%';
DELETE FROM wp_options WHERE option_name LIKE 'sgpb-license-key-%';
DELETE FROM wp_options WHERE option_name LIKE 'sgpb-license-status-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sgpb_save_subcribers_custom', '_sgpb_original', 'sg_popup_options_preview', 'sg_popup_options', 'sg_popup_events', 'sg_popup_target', 'sg_promotional_popup', 'sg_popup_target_preview', '_elementor_edit_mode', '_menu_sgpb_popup_id', 'sg_popup_scripts', 'sgpb_popup_events_custom', 'sg_popup_target_custom', '_wpb_shortcodes_custom_css', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sgpb_save_subcribers_custom', '_sgpb_original', 'sg_popup_options_preview', 'sg_popup_options', 'sg_popup_events', 'sg_popup_target', 'sg_promotional_popup', 'sg_popup_target_preview', '_elementor_edit_mode', '_menu_sgpb_popup_id', 'sg_popup_scripts', 'sgpb_popup_events_custom', 'sg_popup_target_custom', '_wpb_shortcodes_custom_css', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sgpb_save_subcribers_custom', '_sgpb_original', 'sg_popup_options_preview', 'sg_popup_options', 'sg_popup_events', 'sg_popup_target', 'sg_promotional_popup', 'sg_popup_target_preview', '_elementor_edit_mode', '_menu_sgpb_popup_id', 'sg_popup_scripts', 'sgpb_popup_events_custom', 'sg_popup_target_custom', '_wpb_shortcodes_custom_css', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sgpb_save_subcribers_custom', '_sgpb_original', 'sg_popup_options_preview', 'sg_popup_options', 'sg_popup_events', 'sg_popup_target', 'sg_promotional_popup', 'sg_popup_target_preview', '_elementor_edit_mode', '_menu_sgpb_popup_id', 'sg_popup_scripts', 'sgpb_popup_events_custom', 'sg_popup_target_custom', '_wpb_shortcodes_custom_css', '_wp_attachment_image_alt', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_options%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_options%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_options%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_options%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_target%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_target%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_target%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_target%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_events%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_events%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_events%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_events%';

