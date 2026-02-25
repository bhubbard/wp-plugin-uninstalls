#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'appp_deprecate_ver'
wp option delete 'appp_settings_ver'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'myapp_disable_remote_updates'
wp option delete 'appp_logging_timeout'
wp option delete 'appplog_filename'
wp option delete 'ap2-remote-js'
wp option delete 'appp_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%limited_data' OR option_name LIKE '_site_transient_%limited_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_appp_license_%' OR option_name LIKE '_site_transient_appp_license_%'"
wp transient delete 'apppresser_update_plugins'
wp transient delete 'apppresser_plugin_check'
wp transient delete 'apppresser_plugin_update_json'
wp transient delete 'apppresser_update_themes'
wp transient delete 'apppresser_theme_check'
wp transient delete 'apppresser_theme_update_json'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appp_media_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appp_media_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appp_media_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appp_media_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_cookie_auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_cookie_auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_cookie_auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_cookie_auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'appp_media_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'appp_media_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'appp_media_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'appp_media_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_unverified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_unverified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_unverified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_unverified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'app_verification_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'app_verification_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'app_verification_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'app_verification_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
