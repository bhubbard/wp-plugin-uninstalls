#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gathercontent_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saved_settings'"
wp option delete 'gc-api-updated'
wp option delete 'gathercontent_importer'
wp option delete 'active_sitewide_plugins'
wp option delete 'gathercontent_transients'
wp option delete 'gc_post_types'

# Delete Transients
wp transient delete 'gathercontent_importer_custom_field_keys'

# Clear Cron Jobs
wp cron event delete 'gc_associate_hierarchy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_mapped_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_mapped_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_mapped_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_mapped_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_mapping_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_mapping_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_mapping_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_mapping_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_mapped_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_mapped_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_mapped_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_mapped_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_project'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_project'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_project'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_project'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gc_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gc_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gc_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gc_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
