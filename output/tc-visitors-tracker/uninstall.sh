#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tc_visitors_tracker_timezone'
wp option delete 'tc_visitors_tracker_firstday'
wp option delete 'tc_visitors_tracker_dateformat'
wp option delete 'tc_visitors_tracker_timeformat'
wp option delete 'tc_visitors_tracker_rowlimit'
wp option delete 'tc_visitors_tracker_db_version'

