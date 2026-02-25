-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'wordfenceActivated', 'wordfence_version', 'iwp_client_action_message_id', 'iwp_client_public_key', 'wordfence_syncingAttackData', 'wordfence_lastSyncAttackData', 'wordfence_syncAttackDataAttempts', 'limit_login_retries', 'wf_plugin_act_error', 'rewrite_rules', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_myaccount_page_id', 'active_sitewide_plugins', 'wordfenceCentralDisconnectCount', 'update_plugins', 'update_core', 'update_themes', 'wordfence_updating_notifications', 'wordfenceUnlockTries', 'wfSyncGeoIPActive', 'wfsn_backoff');
DELETE FROM wp_options WHERE option_name LIKE '%.lock';
DELETE FROM wp_options WHERE option_name LIKE 'wordfenceCentralJWT%';
DELETE FROM wp_options WHERE option_name LIKE 'wfunlock_%';
DELETE FROM wp_options WHERE option_name LIKE 'wflsbucket:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_context', '_wf_twoFactorNonce', '_wf_twoFactorNonceTime', 'wordfence-notifications', 'wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_context', '_wf_twoFactorNonce', '_wf_twoFactorNonceTime', 'wordfence-notifications', 'wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_context', '_wf_twoFactorNonce', '_wf_twoFactorNonceTime', 'wordfence-notifications', 'wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_context', '_wf_twoFactorNonce', '_wf_twoFactorNonceTime', 'wordfence-notifications', 'wfls-last-captcha-score', 'wfls-last-login', 'wfls-captcha-nonce');

