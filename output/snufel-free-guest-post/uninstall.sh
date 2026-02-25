#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snufel_free_guest_post_settings_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest_email'"
