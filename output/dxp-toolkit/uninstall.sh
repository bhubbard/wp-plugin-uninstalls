#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf-cc-licensing-key'
wp option delete 'cf_cc_settings_visited_pages'
wp option delete 'cf_cc_settings_remove_data_on_uninstall'
wp option delete 'cf_cc_addon_settings_addon_google'
wp option delete 'dxptoolkit_optin'
wp option delete 'dxptoolkit_enable_reporting_feature'
wp option delete 'cf_cc_settings_geoip_provider'
wp option delete 'dxptoolkit_last_ping'
wp option delete 'dxptoolkit_optin_notice'
wp option delete 'dxptoolkit_telemetry_notice'
wp option delete 'dxptoolkit_activation_date'
wp option delete 'active_sitewide_plugins'
wp option delete 'pantheon_ei_gtm_code'

# Clear Cron Jobs
wp cron event delete 'dxptoolkit_ping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_cc_conditions'"
