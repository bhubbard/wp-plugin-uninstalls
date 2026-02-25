-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c247_registered', 'c247_replace_existing_links', 'c247_token', 'c247_username', 'c247_user_id', 'c247_profile_first_name', 'c247_profile_last_name', 'c247_profile_email', 'c247_website_id', 'c247_profile_gender', 'c247_site_logo', 'c247_site_title', 'c247_create_new_links', 'c247_show_offers', 'c247_new_window', 'c247_post_process', 'c247_ver', 'c247_db_ver', 'c247_no_follow_links', 'c247_total_posts', 'c247_current_post', 'c247_about_page_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('c247_disabled', 'c247_keywords', 'c247_disable_offers');
DELETE FROM wp_usermeta WHERE meta_key IN ('c247_disabled', 'c247_keywords', 'c247_disable_offers');
DELETE FROM wp_termmeta WHERE meta_key IN ('c247_disabled', 'c247_keywords', 'c247_disable_offers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('c247_disabled', 'c247_keywords', 'c247_disable_offers');

