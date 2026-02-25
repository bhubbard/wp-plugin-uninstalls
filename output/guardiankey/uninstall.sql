-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gk_resolvescreen', 'gk_loginexternal', 'gk_agentid', 'gk_key', 'gk_iv', 'gk_orgid', 'gk_authgroupid', 'gk_service', 'gk_dnsreverse', 'gk_notify_users', 'gk_apiurl', 'gk_verifyssl', 'gk_mailsubject', 'gk_mailhtml', 'gk_tinc', 'gktinc_api_key', 'gktinc_protectiongroup_hashid', 'gktinc_default_challenge_level', 'gktinc_level', 'gktinc_pre_check', 'gktinc_pre_enforce_block', 'gk_debug', 'dnsreverse');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

