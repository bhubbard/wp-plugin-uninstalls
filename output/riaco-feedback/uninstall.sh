#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riaco_feedback_slug'
wp option delete 'riaco_notify_admin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_color'"
