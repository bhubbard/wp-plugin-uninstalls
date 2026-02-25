#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_event_sheets_sheet_id'
wp option delete 'simple_event_sheets_sheet_name'
wp option delete 'simple_event_sheets_google_api_key'
wp option delete 'simple_event_sheets_passed_events_checkbox'
wp option delete 'simple_event_sheets_default_view'
wp option delete 'simple_event_sheets_show_view_toggle'
wp option delete 'simple_event_sheets_calendar_start_day'
wp option delete 'simple_event_sheets_max_events_per_day'
wp option delete 'simple_event_sheets_checkbox'

