-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jws_version', 'jws_roles', 'jws_stopwords_options', 'jws_admin_options', 'jws_reading_time', 'jws_excluded_types', 'jws_stats_calculated', 'wpwcp_reading_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tve_updated_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('tve_updated_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('tve_updated_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tve_updated_post');

