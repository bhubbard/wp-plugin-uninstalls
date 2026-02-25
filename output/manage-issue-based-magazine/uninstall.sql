-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mim_current_issue', 'mim_issue_display_category', 'mim_full_article_display', 'mim_allow_user_post_article', 'mim_default_post_article_status', 'mim_new_editor_status', 'mim_cover_width', 'mim_cover_height', 'mim_post_per_page_article', 'mim_search_behaviour', 'mim_issue_menu_category', 'page_for_magazines', 'page_for_archives', 'page_for_issue_category', 'mim_issue_menu_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mim_issue_cover_image', 'mim_issue_publish_date', 'tag-description', 'mim_issue_menu_category', 'featured-checkbox', 'mim_category_cover_image', 'mim_issue_master_category', 'mim_issue_pdf_file', 'mim_issue_display_category', 'mim_user_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('mim_issue_cover_image', 'mim_issue_publish_date', 'tag-description', 'mim_issue_menu_category', 'featured-checkbox', 'mim_category_cover_image', 'mim_issue_master_category', 'mim_issue_pdf_file', 'mim_issue_display_category', 'mim_user_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('mim_issue_cover_image', 'mim_issue_publish_date', 'tag-description', 'mim_issue_menu_category', 'featured-checkbox', 'mim_category_cover_image', 'mim_issue_master_category', 'mim_issue_pdf_file', 'mim_issue_display_category', 'mim_user_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mim_issue_cover_image', 'mim_issue_publish_date', 'tag-description', 'mim_issue_menu_category', 'featured-checkbox', 'mim_category_cover_image', 'mim_issue_master_category', 'mim_issue_pdf_file', 'mim_issue_display_category', 'mim_user_status');

