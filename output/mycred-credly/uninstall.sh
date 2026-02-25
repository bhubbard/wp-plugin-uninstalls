#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_credly_connected_email'"
