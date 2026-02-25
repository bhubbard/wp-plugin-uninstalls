-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mylinks_hide_notice', 'mylinks_theme', 'mylinks_meta_title', 'mylinks_meta_description', 'mylinks_upload_favicon', 'wp_mylinks_nofollow', 'wp_mylinks_noindex', 'wp_mylinks_credits', 'wp_mylinks_analytics', 'wp_mylinks_header_script', 'wp_mylinks_open_body_script', 'wp_mylinks_footer_script', 'wp_mylinks_custom_css', 'wp_mylinks_dequeue', 'default_post_edit_rows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_mylinks_count_visits', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_mylinks_count_visits', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_mylinks_count_visits', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_mylinks_count_visits', '_wp_page_template');

