#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynpicwatermark_default_position'
wp option delete 'dynpicwatermark_force_default_position'
wp option delete 'dynpicwatermark_size_type'
wp option delete 'dynpicwatermark_size_value'
wp option delete 'dynpicwatermark_watermark_file'
wp option delete 'dynpicwatermark_mark_any_image'
wp option delete 'dynpicwatermark_memory_limit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
