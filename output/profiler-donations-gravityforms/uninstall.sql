-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gravityformsaddon_gravityformsstripe_settings');
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%history';
DELETE FROM wp_options WHERE option_name LIKE '%last_attempt';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profiler_client_id', 'profiler_clientid', 'profiler_success', 'profiler_progress', 'profiler_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('profiler_client_id', 'profiler_clientid', 'profiler_success', 'profiler_progress', 'profiler_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('profiler_client_id', 'profiler_clientid', 'profiler_success', 'profiler_progress', 'profiler_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profiler_client_id', 'profiler_clientid', 'profiler_success', 'profiler_progress', 'profiler_log');

