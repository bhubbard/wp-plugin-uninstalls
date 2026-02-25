#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'png_to_jpg_settings'

# Delete Transients
wp transient delete 'wpseo_total_unindexed_post_type_archives'
wp transient delete 'wpseo_total_unindexed_general_items'
wp transient delete 'wpseo_total_unindexed_posts'
wp transient delete 'wpseo_total_unindexed_terms'
wp transient delete 'wpseo_unindexed_post_link_count'
wp transient delete 'wpseo_unindexed_term_link_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'png_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'png_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'png_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'png_converted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transparency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transparency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transparency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transparency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
