#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aesirx_analytics_plugin_options'
wp option delete 'aesirx_consent_verify_plugin_options'
wp option delete 'aesirx_consent_modal_plugin_options'
wp option delete 'aesirx_consent_gpc_plugin_options'
wp option delete 'aesirx_consent_geo_plugin_options'
wp option delete 'aesirx_analytics_do_activation_redirect'
wp option delete 'aesirx_analytics_plugin_options_disabled_block_domains'
wp option delete 'aesirx_consent_ai_plugin_options'
wp option delete 'aesirx_privacy_policy_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%]'"

# Delete Transients
wp transient delete 'aesirx_analytics_flow_uuid'
wp transient delete 'aesirx_analytics_update_notice'
wp transient delete 'aesirx_consent_pro_upsell_notice'

# Clear Cron Jobs
wp cron event delete 'analytics_cron_geo'

