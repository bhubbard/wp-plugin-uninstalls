#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giocompress_format'
wp option delete 'giocompress_quality'
wp option delete 'giocompress_max_width'
wp option delete 'giocompress_preserve_original'
wp option delete 'giocompress_lazy_loading'
wp option delete 'giocompress_auto_alt_text'
wp option delete 'giocompress_api_key'
wp option delete 'giocompress_daily_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
