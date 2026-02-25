#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'REAL_HOMES_property_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'REAL_HOMES_property_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'REAL_HOMES_property_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'REAL_HOMES_property_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inspiry_floor_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inspiry_floor_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inspiry_floor_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inspiry_floor_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'REAL_HOMES_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'REAL_HOMES_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'REAL_HOMES_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'REAL_HOMES_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inspiry_is_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inspiry_is_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inspiry_is_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inspiry_is_published'"
