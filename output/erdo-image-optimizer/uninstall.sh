#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'erdo_auto_sanitize'
wp option delete 'erdo_remove_exif'
wp option delete 'erdo_auto_webp'
wp option delete 'erdo_convert_format'
wp option delete 'erdo_total_saved_bytes'
wp option delete 'erdo_quality'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erdo_audit_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erdo_audit_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erdo_audit_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erdo_audit_cache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erdo_savings_bytes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erdo_savings_bytes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erdo_savings_bytes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erdo_savings_bytes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erdo_original_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erdo_original_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erdo_original_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erdo_original_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
