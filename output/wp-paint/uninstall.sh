#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_paint_activated_on'
wp option delete 'wp_paint_review_later_time'
wp option delete 'wp_paint_review_done'
wp option delete 'wp_paint_edits'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wpp_revisions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wpp_revisions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wpp_revisions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wpp_revisions'"
