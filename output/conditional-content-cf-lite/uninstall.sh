#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf_cc_settings_lazy_load'
wp option delete 'cf_cc_settings_visited_pages'
wp option delete 'cf_cc_settings_remove_data_on_uninstall'
wp option delete 'cf_cc_settings_geoip_provider'
wp option delete 'cf_cc_settings_google_maps_api_key'
wp option delete 'cf_cc_settings_geoip_provider_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_cc_trigger_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_cc_trigger_default_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_cc_trigger_default_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_cc_trigger_default_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_cc_trigger_default_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_cc_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_cc_conditions'"
