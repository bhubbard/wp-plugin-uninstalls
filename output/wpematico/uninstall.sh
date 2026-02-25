#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'action_notice_wpematico_addons'
wp option delete 'WPeMatico_Options'
wp option delete 'wpem_show_locally_addons'
wp option delete 'active_sitewide_plugins'
wp option delete 'WPeMatico_danger'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'wpematico_license_keys'
wp option delete 'wpematico_license_status'
wp option delete 'wpematico_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpematico_subscription_email_%'"
wp option delete 'wpematico_level_tnotifications'
wp option delete 'icon_eyes_status'
wp option delete 'wpematico_lastlog_disabled'
wp option delete 'wpematico_dismiss_mdm_notice'
wp option delete 'wpematico_level_snotifications'
wp option delete 'wpematico_dismiss_wizard_notice'
wp option delete 'wpematico_notices'
wp option delete 'wpem_hide_reviews'
wp option delete 'wpem_menu_position'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'etruel_wpematico_addons_data'
wp transient delete '_wpematico_user_has_seen_welcome_page'
wp transient delete '_wpematico_activation_redirect'
wp transient delete '_etruel_wpem_reviews_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpematico_i18n_notif_obj_%' OR option_name LIKE '_site_transient_wpematico_i18n_notif_obj_%'"
wp transient delete 'wpematico_encoding_hosts'

# Clear Cron Jobs
wp cron event delete 'wpematico_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastrun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastrun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastrun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastrun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postscount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postscount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postscount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postscount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastpostscount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastpostscount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastpostscount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastpostscount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_campaign_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_campaign_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_campaign_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_campaign_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cronnextrun'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cronnextrun'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cronnextrun'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cronnextrun'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpe_campaignid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpe_campaignid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpe_campaignid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpe_campaignid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpe_feed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpe_feed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpe_feed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpe_feed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpe_sourcepermalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpe_sourcepermalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpe_sourcepermalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpe_sourcepermalink'"
