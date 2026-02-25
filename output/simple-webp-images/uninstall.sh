#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple-webp-images-conversion-quality'
wp option delete 'simple-webp-images-output-buffering'
wp option delete 'simple-webp-images-excluded-html-ob'
wp option delete 'simple-webp-images-lazy-loading'
wp option delete 'simple-webp-images-excluded-lazy-loading'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
