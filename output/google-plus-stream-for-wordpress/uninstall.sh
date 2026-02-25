#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gps_height'
wp option delete 'gps_title'
wp option delete 'gps_ctime'
wp option delete 'gps_ctime_prof'
wp option delete 'gps_m2c'
wp option delete 'gps_cache'
wp option delete 'gps_cache_prof'
wp option delete 'gps_credit'
wp option delete 'gps_profid'
wp option delete 'gps_nopost'
wp option delete 'gps_dimage'
wp option delete 'gps_nowordpost'

