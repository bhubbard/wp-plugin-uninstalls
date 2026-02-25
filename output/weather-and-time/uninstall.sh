#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_city'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_zone'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_icon'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_condition'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_humidity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wind'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_forecast_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_forecast'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lah'"

