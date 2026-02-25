#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_insert_abtesting_mode'
wp option delete 'wp_insert_adstxt_adsense_admin_notice_dismissed'
wp option delete 'wp_insert_inpostads'
wp option delete 'wp_insert_adwidgets'
wp option delete 'wp_insert_inthemeads'
wp option delete 'wp_insert_shortcodeads'
wp option delete 'wp_insert_pagelevelads'
wp option delete 'wp_insert_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_insert_%'"
wp option delete 'wp_insert_google_api_authentication_data'
wp option delete 'wp_insert_legalpages'
wp option delete 'wp_insert_legal_options'
wp option delete 'wp_insert_trackingcodes'
wp option delete 'wp_insert_vi_code_settings'

# Delete Transients
wp transient delete 'wp_insert_adstxt_adsense_autocheck_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_insert_ip_%' OR option_name LIKE '_site_transient_wp_insert_ip_%'"
wp transient delete 'wp_insert_google_api_access_token'
wp transient delete 'wp_insert_vi_api_access_token'
wp transient delete 'wp_insert_google_api_ad_units'
wp transient delete 'wp_insert_vi_api_settings'
wp transient delete 'wp_insert_vi_api_authetication_token'
wp transient delete 'wp_insert_vi_api_jstag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_insert_vi_api_is_eu_%' OR option_name LIKE '_site_transient_wp_insert_vi_api_is_eu_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_insert_2.3_admin_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_insert_2.3_admin_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_insert_2.3_admin_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_insert_2.3_admin_notice_dismissed'"
