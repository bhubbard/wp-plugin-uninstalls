-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scot_all_groups', 'scot_settings', 'scot_kb_data', 'scot_test');
DELETE FROM wp_options WHERE option_name LIKE 'scot_ai_last_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'scot_ai_count_messages_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('co_instructor');
DELETE FROM wp_usermeta WHERE meta_key IN ('co_instructor');
DELETE FROM wp_termmeta WHERE meta_key IN ('co_instructor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('co_instructor');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end';

