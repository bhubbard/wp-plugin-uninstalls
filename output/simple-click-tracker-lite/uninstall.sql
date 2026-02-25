-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sct_api_key', 'sct_last_domain_ID', 'rlm_version_simple_click_tracker', 'sct_notification');
DELETE FROM wp_options WHERE option_name LIKE 'split_test_counter_%';
DELETE FROM wp_options WHERE option_name LIKE 'split_children_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'split_number_counter_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sct_dflt_domain_id', 'sct_dflt_group_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('sct_dflt_domain_id', 'sct_dflt_group_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('sct_dflt_domain_id', 'sct_dflt_group_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sct_dflt_domain_id', 'sct_dflt_group_id');

