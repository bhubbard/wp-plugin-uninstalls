#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_call_buttons_options_hide_lead_call_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_call_buttons_options_hide_lead_call_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_call_buttons_options_hide_lead_call_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_call_buttons_options_hide_lead_call_buttons'"
