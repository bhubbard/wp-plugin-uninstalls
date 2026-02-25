#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comment_previously_approved'
wp option delete 'ymsk-is-activation'
wp option delete 'ymsk-enabled-utilities'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
