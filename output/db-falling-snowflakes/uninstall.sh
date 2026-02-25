#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'db_snow_start_day'
wp option delete 'db_snow_start_month'
wp option delete 'db_snow_finish_day'
wp option delete 'db_snow_finish_month'
wp option delete 'db_snow_max_number_mobile'
wp option delete 'db_snow_max_number_tablet'
wp option delete 'db_snow_max_number'
wp option delete 'db_snow_min_size_mobile'
wp option delete 'db_snow_min_size_tablet'
wp option delete 'db_snow_min_size'
wp option delete 'db_snow_max_size_mobile'
wp option delete 'db_snow_max_size_tablet'
wp option delete 'db_snow_max_size'
wp option delete 'db_snow_speed_mobile'
wp option delete 'db_snow_speed_tablet'
wp option delete 'db_snow_speed'
wp option delete 'db_snow_color_1'
wp option delete 'db_snow_color_2'
wp option delete 'db_snow_color_3'
wp option delete 'db_snow_color_4'
wp option delete 'db_snow_color_5'
wp option delete 'db_snow_opacity_mobile'
wp option delete 'db_snow_opacity_tablet'
wp option delete 'db_snow_opacity'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'db_snow_color_%'"

