#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2location_world_clock_type'
wp option delete 'ip2location_world_clock_design'
wp option delete 'ip2location_world_clock_time_format'
wp option delete 'ip2location_world_clock_display_time'
wp option delete 'ip2location_world_clock_display_time2'
wp option delete 'ip2location_world_clock_shortcode_params'
wp option delete 'ip2location_world_clock_database'
wp option delete 'ip2location_world_clock_token'
wp option delete 'ip2location_display_time'
wp option delete 'ip2location_display_time2'

