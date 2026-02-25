#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wt_breeze_subdomain'
wp option delete 'wt_breeze_id'
wp option delete 'wt_breeze_days'
wp option delete 'wt_livebar_activated'
wp option delete 'wt_breeze_date_time'
wp option delete 'wt_breeze_date_day'
wp option delete 'wt_breeze_date_hour'
wp option delete 'wt_breeze_duration'
wp option delete 'wt_breeze_layout'
wp option delete 'wt_breeze_dismissable'
wp option delete 'wt_breeze_message'
wp option delete 'wt_breeze_url'
wp option delete 'wt_head_background_color'
wp option delete 'wt_head_button_color'
wp option delete 'wt_breeze_button_text'
wp option delete 'wt_head_text_color'
wp option delete 'wt_head_button_text_color'

# Delete Transients
wp transient delete 'wt_breeze_campaign_trans'
wp transient delete 'wt_breeze_contrib_trans'
wp transient delete 'wt_breeze_calendars_trans'
wp transient delete 'wt_breeze_events_trans'

