#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'serviceform_enable_product_api'
wp option delete 'serviceform_cdp_sync'
wp option delete 'serviceform_api_key'
wp option delete 'serviceform_settings_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
