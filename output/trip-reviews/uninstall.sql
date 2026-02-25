-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trpre_settings', 'trpre_db_version', 'woocommerce_currency', 'wp_travel_engine_settings');
DELETE FROM wp_options WHERE option_name LIKE 'trpre_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trpre_trip_id', '_trpre_reviewer_name', '_trpre_reviewer_email', '_trpre_reviewer_ip', '_trpre_rating', '_trpre_custom_ratings', '_trpre_admin_response', 'wp_travel_engine_setting_trip_price', 'tre_review_count', 'tre_last_review_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trpre_trip_id', '_trpre_reviewer_name', '_trpre_reviewer_email', '_trpre_reviewer_ip', '_trpre_rating', '_trpre_custom_ratings', '_trpre_admin_response', 'wp_travel_engine_setting_trip_price', 'tre_review_count', 'tre_last_review_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trpre_trip_id', '_trpre_reviewer_name', '_trpre_reviewer_email', '_trpre_reviewer_ip', '_trpre_rating', '_trpre_custom_ratings', '_trpre_admin_response', 'wp_travel_engine_setting_trip_price', 'tre_review_count', 'tre_last_review_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trpre_trip_id', '_trpre_reviewer_name', '_trpre_reviewer_email', '_trpre_reviewer_ip', '_trpre_rating', '_trpre_custom_ratings', '_trpre_admin_response', 'wp_travel_engine_setting_trip_price', 'tre_review_count', 'tre_last_review_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

