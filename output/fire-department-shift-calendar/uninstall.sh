#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fd_calendar_shift_start_date'
wp option delete 'fd_calendar_shifts'
wp option delete 'fd_calendar_schedule_pattern'
wp option delete 'fd_calendar_shift_rotation'
wp option delete 'fd_calendar_shift_schedule'

