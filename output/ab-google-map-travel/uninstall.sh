#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'language'
wp option delete 'latitude'
wp option delete 'longitude'
wp option delete 'map_width'
wp option delete 'map_height'
wp option delete 'zoom'
wp option delete 'curr_format'
wp option delete 'day_more_five_fare'
wp option delete 'day_less_five_fare'
wp option delete 'more_five_fare'
wp option delete 'less_five_fare'

