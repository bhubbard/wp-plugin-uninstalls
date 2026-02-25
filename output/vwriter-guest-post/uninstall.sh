#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vwriter_guest_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_show_vwriter_rewrite_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_show_vwriter_rewrite_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_show_vwriter_rewrite_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_show_vwriter_rewrite_meta_value_key'"
