-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wds_google_connect_app_name', 'wds_google_connect_client_id', 'wds_google_connect_client_secret', 'wds_google_connect_redirect_url', 'wds_google_connect_developer_key', 'wds_google_connect_badge_page_id', 'wds_google_connect_badge_name', 'wds_google_connect_badge_type', 'wds_google_connect_badge_lang', 'wds_google_connect_import_author', 'wds_google_connect_sync_schedule', 'wds_google_connect_post_type', 'wds_google_connect_post_status', 'wds_google_connect_category', 'wds_google_connect_tags', 'wds_google_connect_hash_tags', 'wds_google_connect_hash_tags_2_tags', 'wds_google_connect_wp_comments', 'wds_google_connect_show_glink', 'wds_google_connect_gcomments', 'wds_google_connect_ghost_users', 'wds_google_connect_bp_login', 'wds_google_connect_bp_profile', 'wds_google_connect_bp_registration', 'wds_google_connect_bp_required', 'wds_google_connect_bp_activity', 'wds_google_connect_bp_activity_comments', 'wds_google_connect_bp_ghost_users', 'wds_google_connect_consumer_key', 'wds_google_connect_consumer_secret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wds_google_connect_bp_activity_import', 'wds_google_connect_user_id', 'wds_google_connect_token', 'nickname', 'display_name', 'wds_google_connect_photo');
DELETE FROM wp_usermeta WHERE meta_key IN ('wds_google_connect_bp_activity_import', 'wds_google_connect_user_id', 'wds_google_connect_token', 'nickname', 'display_name', 'wds_google_connect_photo');
DELETE FROM wp_termmeta WHERE meta_key IN ('wds_google_connect_bp_activity_import', 'wds_google_connect_user_id', 'wds_google_connect_token', 'nickname', 'display_name', 'wds_google_connect_photo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wds_google_connect_bp_activity_import', 'wds_google_connect_user_id', 'wds_google_connect_token', 'nickname', 'display_name', 'wds_google_connect_photo');

