-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brimp_activity_log', 'brimp_oauth_error', 'brimp_oauth_state', 'brimp_simple_import_running', 'brimp_advanced_import_running', 'brimp_initial_import_running');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%google_review_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%google_review_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%google_review_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%google_review_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%import_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%import_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%import_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%import_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%import_mode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%import_mode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%import_mode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%import_mode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%test_import';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%test_import';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%test_import';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%test_import';

