<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgpb-hide-license-notice-banner');
delete_site_option('sgpb-hide-license-notice-banner');
delete_option('sgpb-metabox-banner-remote-get');
delete_site_option('sgpb-metabox-banner-remote-get');
delete_option('sgpb_extensions_updated');
delete_site_option('sgpb_extensions_updated');
delete_option('sgpb-disable-custom-js');
delete_site_option('sgpb-disable-custom-js');
delete_option('SGPB_POPUP_VERSION');
delete_site_option('SGPB_POPUP_VERSION');
delete_option('sgpb_alert_problems');
delete_site_option('sgpb_alert_problems');
delete_option('sgpbConvertToNewVersion');
delete_site_option('sgpbConvertToNewVersion');
delete_option('sgpbUnsubscribeColumnFixed');
delete_site_option('sgpbUnsubscribeColumnFixed');
delete_option('sgpbUnsubscribeColumn');
delete_site_option('sgpbUnsubscribeColumn');
delete_option('sgpbUnsubscribeTokenColumnFixed');
delete_site_option('sgpbUnsubscribeTokenColumnFixed');
delete_option('sgpb-user-roles');
delete_site_option('sgpb-user-roles');
delete_option('sgpbActivateExtensions');
delete_site_option('sgpbActivateExtensions');
delete_option('SGPB_NEWSLETTER_DATA');
delete_site_option('SGPB_NEWSLETTER_DATA');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'SGPB_NEWSLETTER_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sgpb-secret-code');
delete_site_option('sgpb-secret-code');
delete_option('sgpb-dont-delete-data');
delete_site_option('sgpb-dont-delete-data');
delete_option('sgpb-enable-debug-mode');
delete_site_option('sgpb-enable-debug-mode');
delete_option('sgpb-disable-analytics-general');
delete_site_option('sgpb-disable-analytics-general');
delete_option('sgpb-disable-enctyption-data');
delete_site_option('sgpb-disable-enctyption-data');
delete_option('SGPBCloseReviewPopup-notification');
delete_site_option('SGPBCloseReviewPopup-notification');
delete_option('SGPBMaxOpenCount');
delete_site_option('SGPBMaxOpenCount');
delete_option('SGPBOpenNextTime');
delete_site_option('SGPBOpenNextTime');
delete_option('SGPBUsageDays');
delete_site_option('SGPBUsageDays');
delete_option('SgpbCounter');
delete_site_option('SgpbCounter');
delete_option('sgpbDontShowAskReviewBanner');
delete_site_option('sgpbDontShowAskReviewBanner');
delete_option('sgpb-hide-support-banner');
delete_site_option('sgpb-hide-support-banner');
delete_option('sgpb-new-subscriber');
delete_site_option('sgpb-new-subscriber');
delete_option('popupPreviewId');
delete_site_option('popupPreviewId');
delete_option('sgpbConvertedIds');
delete_site_option('sgpbConvertedIds');
delete_option('SG_MAILCHIMP_API_KEY');
delete_site_option('SG_MAILCHIMP_API_KEY');
delete_option('SGPB_MAILCHIMP_API_KEY');
delete_site_option('SGPB_MAILCHIMP_API_KEY');
delete_option('sgAccessToken');
delete_site_option('sgAccessToken');
delete_option('requestTokenSecret');
delete_site_option('requestTokenSecret');
delete_option('sgAccessTokenSecret');
delete_site_option('sgAccessTokenSecret');
delete_option('sgpbRequestTokenSecret');
delete_site_option('sgpbRequestTokenSecret');
delete_option('sgpbAccessTokenSecret');
delete_site_option('sgpbAccessTokenSecret');
delete_option('sgpbAccessToken');
delete_site_option('sgpbAccessToken');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sgpbSaveOldData%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('SGPBInstallDate');
delete_site_option('SGPBInstallDate');
delete_option('sgpbExtensionsInfo');
delete_site_option('sgpbExtensionsInfo');
delete_option('sgpb-disable-disable-custom-js');
delete_site_option('sgpb-disable-disable-custom-js');
delete_option('sgpb-all-notifications-data');
delete_site_option('sgpb-all-notifications-data');
delete_option('sgpb-all-active-notifications');
delete_site_option('sgpb-all-active-notifications');
delete_option('sgpb-all-dismissed-notifications');
delete_site_option('sgpb-all-dismissed-notifications');
delete_option('sgpb-all-removed-notifications');
delete_site_option('sgpb-all-removed-notifications');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sgpb-license-key-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sgpb-license-status-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('SGPB_INACTIVE_EXTENSIONS');
delete_site_option('SGPB_INACTIVE_EXTENSIONS');
delete_option('sgpbModifiedRegisteredPluginsPaths');
delete_site_option('sgpbModifiedRegisteredPluginsPaths');
delete_option('SG_POPUP_BUILDER_REGISTERED_PLUGINS');
delete_site_option('SG_POPUP_BUILDER_REGISTERED_PLUGINS');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('sgpopup_customPostType_categories');
delete_site_option('sgpopup_customPostType_categories');
delete_option('sgpb-hide_disable-custom-js-warning');
delete_site_option('sgpb-hide_disable-custom-js-warning');
delete_option('sgpb-hide_disable-injection-warning');
delete_site_option('sgpb-hide_disable-injection-warning');

// Delete Transients
delete_transient('sgpbImportSubscribersMessaage');
delete_site_transient('sgpbImportSubscribersMessaage');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('sgpb_subscriptionplus_status');
delete_site_transient('sgpb_subscriptionplus_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('sgpb_send_newsletter');
wp_clear_scheduled_hook('sgpbGetNotifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgpb_save_subcribers_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgpb_save_subcribers_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgpb_save_subcribers_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgpb_save_subcribers_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sgpb_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sgpb_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sgpb_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sgpb_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_options_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_options_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_options_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_options_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'sg_popup_options%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'sg_popup_options%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'sg_popup_options%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'sg_popup_options%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_events' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_events' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_events' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_events' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_target' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_promotional_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_promotional_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_promotional_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_promotional_popup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_target_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_target_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_target_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_target_preview' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_edit_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_sgpb_popup_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_sgpb_popup_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_sgpb_popup_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_sgpb_popup_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_scripts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'sg_popup_target%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'sg_popup_target%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'sg_popup_target%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'sg_popup_target%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'sg_popup_events%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'sg_popup_events%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'sg_popup_events%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'sg_popup_events%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgpb_popup_events_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgpb_popup_events_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgpb_popup_events_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgpb_popup_events_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_popup_target_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_popup_target_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_popup_target_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_popup_target_custom' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpb_shortcodes_custom_css' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

