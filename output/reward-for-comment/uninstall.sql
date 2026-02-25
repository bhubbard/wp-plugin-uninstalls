-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfcx_satoshi_balance', 'rfcx_min_satoshi', 'rfcx_max_satoshi', 'rfcx_notify_empty', 'rfcx_notify_reward', 'rfcx_satoshi_api_key', 'rfcx_system_ready', 'rfcx_txt_satoshi', 'rfcx_txt_chars', 'rfcx_extra_satoshi', 'rfcx_extra_words', 'site_admins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('satoshi_reward');
DELETE FROM wp_usermeta WHERE meta_key IN ('satoshi_reward');
DELETE FROM wp_termmeta WHERE meta_key IN ('satoshi_reward');
DELETE FROM wp_commentmeta WHERE meta_key IN ('satoshi_reward');

