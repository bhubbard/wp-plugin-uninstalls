#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'APF_Demo'
wp option delete 'APF_BasicUsage'
wp option delete 'APF_TaxonomyField'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'apfl_contributors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metabox_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metabox_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metabox_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metabox_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
