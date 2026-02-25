#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aat_confidence'
wp option delete 'aat_api_key'
wp option delete 'aat_api_notice_dismissed'
wp option delete 'aat_endpoint'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
