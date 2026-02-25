#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seatreg_db_current_version'
wp option delete 'seatreg_trigger_side_effect'

# Clear Cron Jobs
wp cron event delete 'seatreg_pending_booking_expiration'

