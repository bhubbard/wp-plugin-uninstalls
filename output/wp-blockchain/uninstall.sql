-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbc_provider_btc_username', 'wpbc_provider_btc_password', 'wpbc_provider', 'wpbc_last_cron', 'wpbc_block_cron', 'wpbc_cron_key', 'wpbc_allow_poorman', 'wpbc_settings_saved', 'wpbc_has_fontawesome', 'wpbc_donate_btc', 'wpbc_visible_states', 'wpbc_visible_only_admins', 'wpbc_blockchains', 'wpbc_domain_calls', 'wpbc_schema_version', 'wpbc_provider_username', 'wpbc_post_types', 'wpbc_provider_check', 'wpbc_provider_password', 'wpbc_intro', 'wpbc_restamps');
DELETE FROM wp_options WHERE option_name LIKE 'wpbc_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbc_provider_ok_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbc_provider_%';
DELETE FROM wp_options WHERE option_name LIKE '%_username';
DELETE FROM wp_options WHERE option_name LIKE '%_password';
DELETE FROM wp_options WHERE option_name LIKE '%username';
DELETE FROM wp_options WHERE option_name LIKE '%password';
DELETE FROM wp_options WHERE option_name LIKE 'wpbc_get_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpbc_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpbc_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpbc_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpbc_notice_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpbc_stamp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpbc_stamp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpbc_stamp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpbc_stamp_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpbc_stamp_history_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpbc_stamp_history_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpbc_stamp_history_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpbc_stamp_history_%';

