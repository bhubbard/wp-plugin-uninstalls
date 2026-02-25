#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'resaline_frame_height'
wp option delete 'resaline_frame_length'
wp option delete 'resaline_frame_background'
wp option delete 'resaline_nb_calendars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'resaline_calendar_%'"
wp option delete 'resaline_account_id'

