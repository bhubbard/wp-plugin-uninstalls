#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fgj2wp_options'
wp option delete 'fgj2wp_last_article_id'
wp option delete 'fgj2wp_last_category_id'
wp option delete 'fgj2wp_last_section_id'
wp option delete 'fgj2wp_save_posts'
wp option delete 'fgj2wp_save_terms'
wp option delete 'fgj2wp_save_term_relationships'
wp option delete 'fgj2wp_stop_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'fgj2wp_ftp_options'
wp option delete 'fgj2wp_last_link_id'

# Delete Transients
wp transient delete 'wc_count_comments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgj2wp_old_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgj2wp_old_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgj2wp_old_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgj2wp_old_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgj2wp_old_tag_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgj2wp_old_tag_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgj2wp_old_tag_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgj2wp_old_tag_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgj2wp_old_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgj2wp_old_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgj2wp_old_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgj2wp_old_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
