#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdt_cookie_demo_status'
wp option delete 'mdt_cookie_banner_guid'
wp option delete 'mdt_cookie_banner_status'
wp option delete 'mdt_cookie_live_url'
wp option delete 'mdt_wp_consent_api_enabled'
wp option delete 'mdt_google_consent_enabled'
wp option delete 'mdt_google_tags_before_consent'
wp option delete 'mdt_cookie_demo_url'
wp option delete 'mcc_banner_config'
wp option delete 'mdt_cookie_baseURL'
wp option delete 'mdt_cookie_demoSettingFileName'
wp option delete 'mdt_cookie_bannerFolder'

