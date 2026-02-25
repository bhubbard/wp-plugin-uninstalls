#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_to_diaspora_settings'

# Delete Transients
wp transient delete 'wp2d_no_js_force_refetch'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_to_diaspora'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_to_diaspora'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_to_diaspora'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_to_diaspora'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_to_diaspora_post_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_to_diaspora_post_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_to_diaspora_post_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_to_diaspora_post_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_to_diaspora_post_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_to_diaspora_post_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_to_diaspora_post_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_to_diaspora_post_error'"
