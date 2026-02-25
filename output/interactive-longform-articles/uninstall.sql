-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('int_option_enable_for_posts', 'int_option_enable_for_projects', 'int_option_enable_for_casestudies', 'int_option_enable_post_type', 'int_option_display_downloads', 'int_option_allow_iframes', 'int_option_google_analytics', 'int_option_tracker_name', 'int_option_progress_color', 'default_post_edit_rows');
DELETE FROM wp_options WHERE option_name LIKE 'int_option_enable_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'int_article_sections');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'int_article_sections');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'int_article_sections');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'int_article_sections');

