#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_script_item_src'
wp option delete 'cookie_script_location'
wp option delete 'cookie_script_location_in_element'
wp option delete 'cookie_script_with_plan_script_added'
wp option delete 'cookie_script_google_consent_mode_enabled'
wp option delete 'cookie_script_with_plan_timestamp'
wp option delete 'cookie_script_google_consent_mode_settings'
wp option delete 'cookie_script_without_plan_script_added'
wp option delete 'cookie_script_redirect_location'
wp option delete 'cookie_script_without_plan_cookies'
wp option delete 'cookie_script_secret'
wp option delete 'cookie_script_without_plan_privacy_policy_url'
wp option delete 'cookie_script_without_banner_language'
wp option delete 'cookie_script_item_id'
wp option delete 'cookie_script_item_connection_type'
wp option delete 'cookie_script_current_plugin_version'

# Delete Transients
wp transient delete 'banner-added-flash'

