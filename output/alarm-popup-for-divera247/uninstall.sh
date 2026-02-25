#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'esap_popup_color_text'
wp option delete 'esap_popup_color_bg'
wp option delete 'esap_popup_color_border'
wp option delete 'esap_popup_alarm_keywords'
wp option delete 'esap_popup_unit_ids'
wp option delete 'esap_popup_list_count'
wp option delete 'esap_popup_settings_json_mapping'
wp option delete 'esap_popup_settings_api_key'
wp option delete 'esap_popup_events_time_last_api_call'
wp option delete 'esap_popup_events_cache'
wp option delete 'esap_popup_alarm_time_last_api_call'
wp option delete 'esap_popup_alarm_cache'

