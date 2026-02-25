-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmdimo_api_url', 'mmdimo_username', 'mmdimo_api_key', 'mmdimo_fhid', 'mmdimo_post_type', 'mmdimo_default_state', 'mmdimo_case_check_default', 'mmdimo_update', 'mmdimo_install_uuid');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mmdimo_case', 'mmdimo_charity_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('mmdimo_case', 'mmdimo_charity_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('mmdimo_case', 'mmdimo_charity_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mmdimo_case', 'mmdimo_charity_metadata');

