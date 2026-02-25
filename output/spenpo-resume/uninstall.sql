-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spcv_resume_api_require_auth', 'spcv_api_require_auth', 'spcv_db_version');

