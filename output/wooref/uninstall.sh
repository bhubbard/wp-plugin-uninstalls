#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooref_cookie_expire'
wp option delete 'wooref_trackme'
wp option delete 'wooref_track_admin_email'
wp option delete 'wooref_track_user_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wooref_site_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wooref_site_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wooref_site_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wooref_site_ref'"
