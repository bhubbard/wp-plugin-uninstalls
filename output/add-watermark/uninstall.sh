#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'add-watermark-%'"
wp option delete 'add-watermark-default-active'
wp option delete 'add-watermark-exclude'
wp option delete 'add-watermark-image'
wp option delete 'add-watermark-size'
wp option delete 'add-watermark-horizontal-pos-from'
wp option delete 'add-watermark-vertical-pos-from'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'add-watermark'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'add-watermark'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'add-watermark'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'add-watermark'"
