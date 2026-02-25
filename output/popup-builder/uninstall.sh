#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sgpb-hide-license-notice-banner'
wp option delete 'sgpb-metabox-banner-remote-get'
wp option delete 'sgpb_extensions_updated'
wp option delete 'sgpb-disable-custom-js'
wp option delete 'SGPB_POPUP_VERSION'
wp option delete 'sgpb_alert_problems'
wp option delete 'sgpbConvertToNewVersion'
wp option delete 'sgpbUnsubscribeColumnFixed'
wp option delete 'sgpbUnsubscribeColumn'
wp option delete 'sgpbUnsubscribeTokenColumnFixed'
wp option delete 'sgpb-user-roles'
wp option delete 'sgpbActivateExtensions'
wp option delete 'SGPB_NEWSLETTER_DATA'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'SGPB_NEWSLETTER_%'"
wp option delete 'sgpb-secret-code'
wp option delete 'sgpb-dont-delete-data'
wp option delete 'sgpb-enable-debug-mode'
wp option delete 'sgpb-disable-analytics-general'
wp option delete 'sgpb-disable-enctyption-data'
wp option delete 'SGPBCloseReviewPopup-notification'
wp option delete 'SGPBMaxOpenCount'
wp option delete 'SGPBOpenNextTime'
wp option delete 'SGPBUsageDays'
wp option delete 'SgpbCounter'
wp option delete 'sgpbDontShowAskReviewBanner'
wp option delete 'sgpb-hide-support-banner'
wp option delete 'sgpb-new-subscriber'
wp option delete 'popupPreviewId'
wp option delete 'sgpbConvertedIds'
wp option delete 'SG_MAILCHIMP_API_KEY'
wp option delete 'SGPB_MAILCHIMP_API_KEY'
wp option delete 'sgAccessToken'
wp option delete 'requestTokenSecret'
wp option delete 'sgAccessTokenSecret'
wp option delete 'sgpbRequestTokenSecret'
wp option delete 'sgpbAccessTokenSecret'
wp option delete 'sgpbAccessToken'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sgpbSaveOldData%'"
wp option delete 'SGPBInstallDate'
wp option delete 'sgpbExtensionsInfo'
wp option delete 'sgpb-disable-disable-custom-js'
wp option delete 'sgpb-all-notifications-data'
wp option delete 'sgpb-all-active-notifications'
wp option delete 'sgpb-all-dismissed-notifications'
wp option delete 'sgpb-all-removed-notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sgpb-license-key-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sgpb-license-status-%'"
wp option delete 'SGPB_INACTIVE_EXTENSIONS'
wp option delete 'sgpbModifiedRegisteredPluginsPaths'
wp option delete 'SG_POPUP_BUILDER_REGISTERED_PLUGINS'
wp option delete 'active_sitewide_plugins'
wp option delete 'sgpopup_customPostType_categories'
wp option delete 'sgpb-hide_disable-custom-js-warning'
wp option delete 'sgpb-hide_disable-injection-warning'

# Delete Transients
wp transient delete 'sgpbImportSubscribersMessaage'
wp transient delete 'update_plugins'
wp transient delete 'sgpb_subscriptionplus_status'

# Clear Cron Jobs
wp cron event delete 'sgpb_send_newsletter'
wp cron event delete 'sgpbGetNotifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgpb_save_subcribers_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgpb_save_subcribers_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgpb_save_subcribers_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgpb_save_subcribers_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sgpb_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sgpb_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sgpb_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sgpb_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_options_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_options_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_options_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_options_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_options%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_options%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_options%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_options%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_promotional_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_promotional_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_promotional_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_promotional_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_target_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_target_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_target_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_target_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_sgpb_popup_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_sgpb_popup_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_sgpb_popup_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_sgpb_popup_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_target%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_target%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_target%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_target%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sg_popup_events%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sg_popup_events%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sg_popup_events%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sg_popup_events%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sgpb_popup_events_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sgpb_popup_events_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sgpb_popup_events_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sgpb_popup_events_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sg_popup_target_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sg_popup_target_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sg_popup_target_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sg_popup_target_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
