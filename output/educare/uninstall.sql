-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('educare_svr_data', 'educare_db_sys_tem', 'educare_files_selector');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('educare_renewal_notice', 'educare_dismissed_notices', 'School', 'user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('educare_renewal_notice', 'educare_dismissed_notices', 'School', 'user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('educare_renewal_notice', 'educare_dismissed_notices', 'School', 'user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('educare_renewal_notice', 'educare_dismissed_notices', 'School', 'user_id');

