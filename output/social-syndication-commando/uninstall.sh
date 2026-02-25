#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social-traffic-commando-plain_d81c_activated'

# Clear Cron Jobs
wp cron event delete 'ssc_event_hook'

