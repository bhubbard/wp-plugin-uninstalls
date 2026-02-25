#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'donate_areas'
wp option delete 'wanttoforgive'
wp option delete 'buttonlocation'
wp option delete 'donationplace'
wp option delete 'buttontitle'
wp option delete 'test'
wp option delete 'text'
wp option delete 'number'
wp option delete 'textarea'
wp option delete 'select'
wp option delete 'editor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donate'"
