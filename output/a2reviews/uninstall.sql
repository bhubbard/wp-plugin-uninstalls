-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a2reviews_options', 'a2reviews_access_token', 'a2reviews_auth_code', 'a2reviews_settings', 'a2reviews_client_settings', 'a2reviews_client_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('a2_meta_avg_rating', 'a2_meta_total_rating', 'first_name', 'last_name', 'a2_meta_status', 'a2_meta_total_questions', 'a2_meta_count', '_customer_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('a2_meta_avg_rating', 'a2_meta_total_rating', 'first_name', 'last_name', 'a2_meta_status', 'a2_meta_total_questions', 'a2_meta_count', '_customer_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('a2_meta_avg_rating', 'a2_meta_total_rating', 'first_name', 'last_name', 'a2_meta_status', 'a2_meta_total_questions', 'a2_meta_count', '_customer_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('a2_meta_avg_rating', 'a2_meta_total_rating', 'first_name', 'last_name', 'a2_meta_status', 'a2_meta_total_questions', 'a2_meta_count', '_customer_user');

