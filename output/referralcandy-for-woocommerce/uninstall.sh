#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_referralcandy_plugin_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_accepts_marketing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_accepts_marketing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_accepts_marketing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_accepts_marketing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_aic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_aic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_aic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_aic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rc_loc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rc_loc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rc_loc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rc_loc'"
