#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smp_fb_app_id'
wp option delete 'smp_fb_app_secret'
wp option delete 'smp_instagram_auto_publish'
wp option delete 'smp_facebook_auto_publish'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smp-ig-published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smp-ig-published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smp-ig-published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smp-ig-published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smp-fb-published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smp-fb-published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smp-fb-published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smp-fb-published'"
