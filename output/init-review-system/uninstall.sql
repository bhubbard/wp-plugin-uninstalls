-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('init_plugin_suite_rs_global_avg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_init_review_count', '_init_review_total', '_init_review_avg', '_init_review_weighted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_init_review_count', '_init_review_total', '_init_review_avg', '_init_review_weighted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_init_review_count', '_init_review_total', '_init_review_avg', '_init_review_weighted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_init_review_count', '_init_review_total', '_init_review_avg', '_init_review_weighted');

