#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fgd2wp_options'
wp option delete 'fgd2wp_last_node_article_id'
wp option delete 'fgd2wp_last_node_story_id'
wp option delete 'fgd2wp_last_node_post_id'
wp option delete 'fgd2wp_last_node_page_id'
wp option delete 'fgd2wp_last_taxonomy_categories_id'
wp option delete 'fgd2wp_last_taxonomy_tags_id'
wp option delete 'fgd2wp_save_posts'
wp option delete 'fgd2wp_save_terms'
wp option delete 'fgd2wp_save_term_relationships'
wp option delete 'fgd2wp_stop_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'fgd2wp_ftp_options'

# Delete Transients
wp transient delete 'wc_count_comments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgd2wp_old_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgd2wp_old_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgd2wp_old_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgd2wp_old_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
