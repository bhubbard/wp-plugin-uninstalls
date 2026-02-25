#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_cc_service_content'
wp option delete 'htcc_as_options'
wp option delete 'htcc_custom_options'
wp option delete 'htcc_options'
wp option delete 'htcc_fb_ref'
wp option delete 'mobilemonkey_environment'
wp option delete 'mobilemonkey_active_page_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%company_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_page_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fb_internal_page_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%available_company'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%page_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%account_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%message_statistic'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%current_subscribe'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wp_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%environment'"
wp option delete 'htcc_fb_js_src'
wp option delete 'htcc_plugin_details'
wp option delete 'mobilemonkey_token'

# Delete Transients
wp transient delete 'wp-chatbot__previously-connected-page'
wp transient delete 'banner_notice_off'
wp transient delete 'lead_notice_off'
wp transient delete 'promo_notice_off'
wp transient delete 'done-tab'
wp transient delete 'ht_cc_admin_sidebar__hide_mobile_app_banner'
wp transient delete 'pre_value'
wp transient delete 'current-tab'
wp transient delete 'cg_notice_off'

