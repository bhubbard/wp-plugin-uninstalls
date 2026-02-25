#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tct_spd_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tct_spd_weather_data%' OR option_name LIKE '_site_transient_tct_spd_weather_data%'"

