#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fgs2wp_options'
wp option delete 'fgs2wp_last_spip_article_id'
wp option delete 'fgs2wp_last_spip_news_id'
wp option delete 'fgs2wp_last_news_category_id'
wp option delete 'fgs2wp_save_posts'
wp option delete 'fgs2wp_save_terms'
wp option delete 'fgs2wp_save_term_relationships'
wp option delete 'fgs2wp_stop_import'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"

# Delete Transients
wp transient delete 'wc_count_comments'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgs2wp_old_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgs2wp_old_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgs2wp_old_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgs2wp_old_article_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgs2wp_old_news_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgs2wp_old_news_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgs2wp_old_news_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgs2wp_old_news_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lien_titre'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lien_titre'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lien_titre'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lien_titre'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lien_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lien_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lien_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lien_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fgs2wp_old_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fgs2wp_old_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fgs2wp_old_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fgs2wp_old_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
