#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ean_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ean_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ean_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ean_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ean_notice_ignore'"
