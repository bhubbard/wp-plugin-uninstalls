#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bleep_filter_content'
wp option delete 'bleep_filter_content_rss'
wp option delete 'bleep_filter_comment'
wp option delete 'bleep_filter_comment_rss'
wp option delete 'bleep_filter_bbpress'
wp option delete 'bleep_filter_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bleep_replacement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bleep_replacement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bleep_replacement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bleep_replacement'"
