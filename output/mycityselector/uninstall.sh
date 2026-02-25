#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcs_base_domain'
wp option delete 'mcs_default_city_id'
wp option delete 'mcs_seo_mode'
wp option delete 'mcs_country_choose_enabled'
wp option delete 'mcs_province_choose_enabled'
wp option delete 'mcs_ask_mode'
wp option delete 'mcs_redirect_next_visits'
wp option delete 'mcs_log_enabled'
wp option delete 'mcs_debug_enabled'
wp option delete 'mcs_default_location_id'
wp option delete 'mcs_default_location_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

