#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bs-guest-author-integration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BS_guest_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BS_guest_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BS_guest_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BS_guest_author_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BS_guest_author_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BS_guest_author_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BS_guest_author_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BS_guest_author_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BS_guest_author_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BS_guest_author_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BS_guest_author_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BS_guest_author_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BS_guest_author_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BS_guest_author_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BS_guest_author_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BS_guest_author_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'BS_author_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'BS_author_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'BS_author_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'BS_author_type'"
