#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acl_wooacd_custom_request'
wp option delete 'acl_wooacd_traveller'
wp option delete 'acl_wooacd_estimated_delivery_time'
wp option delete 'acl_wooacd_menus'
wp option delete 'acl_wooacd_enable_notifications'
wp option delete 'acl_wooacd_set_estimated_delivery_time'
wp option delete 'acl_wooacd_price_breakdown'
wp option delete 'acl_wooacd_note_placeholder'
wp option delete 'acl_wooacd_phrase'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooacd_cost_breakdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooacd_cost_breakdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooacd_cost_breakdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooacd_cost_breakdown'"
