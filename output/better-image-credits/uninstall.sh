#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better-image-credits-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'better-image-credits_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_source_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_license_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_license_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_license_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_license_url'"
