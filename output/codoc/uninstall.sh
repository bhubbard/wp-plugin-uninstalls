#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tadv_admin_settings'

# Delete Transients
wp transient delete 'codoc_api_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codoc_shortcode_evacuations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codoc_shortcode_evacuations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codoc_shortcode_evacuations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codoc_shortcode_evacuations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codoc_entry_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codoc_entry_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codoc_entry_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codoc_entry_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codoc_saved_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codoc_saved_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codoc_saved_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codoc_saved_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'codoc_post_thumbnail_invoking_entry_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'codoc_post_thumbnail_invoking_entry_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'codoc_post_thumbnail_invoking_entry_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'codoc_post_thumbnail_invoking_entry_code'"
