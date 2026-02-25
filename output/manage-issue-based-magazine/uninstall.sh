#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mim_current_issue'
wp option delete 'mim_issue_display_category'
wp option delete 'mim_full_article_display'
wp option delete 'mim_allow_user_post_article'
wp option delete 'mim_default_post_article_status'
wp option delete 'mim_new_editor_status'
wp option delete 'mim_cover_width'
wp option delete 'mim_cover_height'
wp option delete 'mim_post_per_page_article'
wp option delete 'mim_search_behaviour'
wp option delete 'mim_issue_menu_category'
wp option delete 'page_for_magazines'
wp option delete 'page_for_archives'
wp option delete 'page_for_issue_category'
wp option delete 'mim_issue_menu_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tag-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tag-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tag-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tag-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_menu_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_menu_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_menu_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_menu_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured-checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_category_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_category_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_category_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_category_cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_master_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_master_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_master_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_master_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_pdf_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_pdf_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_pdf_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_pdf_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_issue_display_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_issue_display_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_issue_display_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_issue_display_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mim_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mim_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mim_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mim_user_status'"
