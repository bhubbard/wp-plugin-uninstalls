-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hngamers_atavism_user_verify_plugin_options', 'hngamers_core_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hng_username', '_hng_ip', '_hng_outcome', '_hng_reason', '_hng_ts_utc', 'hng_last_attempt_utc', 'hng_last_attempt_ip', 'hng_last_attempt_outcome', 'hng_last_success_utc', 'hng_success_count', 'hng_fail_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hng_username', '_hng_ip', '_hng_outcome', '_hng_reason', '_hng_ts_utc', 'hng_last_attempt_utc', 'hng_last_attempt_ip', 'hng_last_attempt_outcome', 'hng_last_success_utc', 'hng_success_count', 'hng_fail_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hng_username', '_hng_ip', '_hng_outcome', '_hng_reason', '_hng_ts_utc', 'hng_last_attempt_utc', 'hng_last_attempt_ip', 'hng_last_attempt_outcome', 'hng_last_success_utc', 'hng_success_count', 'hng_fail_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hng_username', '_hng_ip', '_hng_outcome', '_hng_reason', '_hng_ts_utc', 'hng_last_attempt_utc', 'hng_last_attempt_ip', 'hng_last_attempt_outcome', 'hng_last_success_utc', 'hng_success_count', 'hng_fail_count');

