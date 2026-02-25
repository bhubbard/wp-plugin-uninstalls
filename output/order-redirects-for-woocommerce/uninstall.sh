#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wc_redirect_default'
wp option delete 'wps_wc_redirect_append_order_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redirect_url_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redirect_url_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redirect_url_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redirect_url_priority'"
