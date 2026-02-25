#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gam_default_guest_author_name'
wp option delete 'gam_guest_author_intro'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_guest_author_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_guest_author_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_guest_author_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_guest_author_name'"
