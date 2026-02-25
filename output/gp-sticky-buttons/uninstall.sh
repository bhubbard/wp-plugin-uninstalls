#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gsb_redirect'
wp option delete 'gp_sticky_buttons_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'widget_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'channels_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'channels_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'channels_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'channels_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsb_selected_channels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsb_selected_channels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsb_selected_channels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsb_selected_channels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theme_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theme_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theme_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theme_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trigger_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_rule_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_rule_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_rule_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_rule_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'day_rule_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'day_rule_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'day_rule_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'day_rule_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_rule_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_rule_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_rule_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_rule_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country_rule_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country_rule_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country_rule_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country_rule_setting'"
