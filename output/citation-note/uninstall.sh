#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'citenote_allow_post_type'
wp option delete 'citenote_footer_title'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'citenote_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'citenote_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'citenote_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'citenote_list'"
