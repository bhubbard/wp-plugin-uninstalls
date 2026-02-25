#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtp_mycred_old_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtp_mycred_old_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtp_mycred_old_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtp_mycred_old_points'"
