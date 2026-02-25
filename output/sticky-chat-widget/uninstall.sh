#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_box_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-subscribe-hide'"
wp option delete 'scw_redirect'
wp option delete 'gsb_selected_channels'
wp option delete 'is_scw_database_migrated'
wp option delete 'gsb_widget_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ginger_sb_%'"
wp option delete 'gsb_widget_settings'
wp option delete 'gsb_trigger_rules'
wp option delete 'gsb_page_rules'
wp option delete 'gsb_time_rules'
wp option delete 'gsb_tooltip_settings'
wp option delete 'gsb_google_analytics'
wp option delete 'gsb_button_css'
wp option delete 'gsb_updated_date'
wp option delete 'sticky-chat-widget_review_box_status'
wp option delete 'scb-sent-leads-mail'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'channel_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'channel_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'channel_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'channel_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'contact_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'contact_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'contact_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'contact_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selected_channels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selected_channels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selected_channels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selected_channels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'widget_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'widget_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'widget_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'widget_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trigger_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trigger_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trigger_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trigger_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tooltip_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tooltip_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tooltip_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tooltip_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_analytics'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_analytics'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_analytics'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_analytics'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'button_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'button_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'button_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'button_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weekdays'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weekdays'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weekdays'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weekdays'"
