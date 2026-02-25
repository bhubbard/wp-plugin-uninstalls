#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tc_post_format'
wp option delete 'tc_post_encoding'
wp option delete 'tc_comment_format'
wp option delete 'tc_comment_encoding'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tc_post_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tc_post_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tc_post_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tc_post_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tc_post_encoding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tc_post_encoding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tc_post_encoding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tc_post_encoding'"
