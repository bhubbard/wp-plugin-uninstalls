#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'me_spr_post_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'me_spr_post_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'me_spr_post_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'me_spr_post_redirect'"
