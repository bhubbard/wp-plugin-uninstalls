-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipv_count_blocked', 'ipv_log_keep_days', 'ipv_modus', 'ipv_request_includes', 'ipv_request_excludes', 'ipv_auth_slug', 'ipv_gdpr_ips', 'ipv_use_asn', 'ipv_home_path', 'ipv_whitelist', 'ipv_auth_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'ipv_ip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

