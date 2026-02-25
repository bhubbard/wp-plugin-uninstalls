#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prayer_times_method'
wp option delete 'prayer_times_address'
wp option delete 'prayer_times_school'
wp option delete 'prayer_times_latitude_adjustment_method'
wp option delete 'prayer_times_display_format'
wp option delete 'prayer_times_display_header_bg'
wp option delete 'prayer_times_display_header_text'
wp option delete 'prayer_times_display_row_bg'
wp option delete 'prayer_times_display_row_text'
wp option delete 'prayer_times_display_heading'
wp option delete 'prayer_times_display_heading_bg'
wp option delete 'prayer_times_display_heading_text'
wp option delete 'prayer_times_override_fajr'
wp option delete 'prayer_times_override_dhuhr'
wp option delete 'prayer_times_override_asr'
wp option delete 'prayer_times_override_maghrib'
wp option delete 'prayer_times_override_isha'

