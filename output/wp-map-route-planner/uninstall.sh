#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rp_site_key'
wp option delete 'rp_default_longitude'
wp option delete 'rp_default_latitude'
wp option delete 'rp_default_zoom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
