#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adventi_gifts_settings'
wp option delete 'adventi_color_scheme'
wp option delete 'adventi_start_date'
wp option delete 'adventi_days_count'
wp option delete 'adventi_main_title'
wp option delete 'adventi_invitation_text'
wp option delete 'adventi_submit_text'
wp option delete 'adventi_day_prefix'
wp option delete 'adventi_tomorrow_message'
wp option delete 'adventi_download_text'
wp option delete 'adventi_future_msg'

