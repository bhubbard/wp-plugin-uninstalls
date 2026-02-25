#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wot_wc_attachment_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wot_ea_order_current_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wot_ea_order_current_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wot_ea_order_current_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wot_ea_order_current_language'"
