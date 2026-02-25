#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gc_general_settings'
wp option delete 'gc_event_attributes'
wp option delete 'gc_advanced_settings'
wp option delete 'gc_pro_features'
wp option delete 'my_timezone_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecfg_activated_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecfg_activated_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecfg_activated_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecfg_activated_on'"
