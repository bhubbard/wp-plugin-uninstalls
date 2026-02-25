#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stmsb_booking_timezone'
wp option delete 'stmsb_display_date_format'
wp option delete 'stmsb_display_time_format'
wp option delete 'stmsb_display_rows'
wp option delete 'stmsb_custom_css'
wp option delete 'stmsb_db_version'
wp option delete 'stmsb_display_date_Format'
wp option delete 'stmsb_display_time_Format'

