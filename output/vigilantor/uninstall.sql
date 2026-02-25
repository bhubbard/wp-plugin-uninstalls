-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vitor_enable_realtime', 'vitor_custom_blocklist_enabled', 'vitor_block_comments', 'vitor_block_trackbacks', 'vitor_hide_commentform', 'vitor_block_registration', 'vitor_flag_registration', 'vitor_block_login', 'vitor_cloudflare_enabled', 'vitor_block_everything', 'vitor_exit_list_last_updated', 'vitor_el_update_frequency', 'vitor_stat_blockedviews', 'vitor_blocked_page', 'vitor_custom_block_message', 'vitor_tor_blocked_message', 'vitor_stat_trackbacks', 'vitor_stat_comments', 'vitor_stat_registration', 'vitor_stat_login', 'vitor_realtime_timeout', 'vitor_use_captcha', 'vitor_use_hcaptcha', 'vitor_custom_blocklist', 'vitor_last_update_failure', 'vitor_exit_list', 'hcaptcha_settings', 'hcaptcha_secret_key', 'vitor_list_updating');
DELETE FROM wp_options WHERE option_name LIKE 'vitor_token:%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vitor_flagged_registration');
DELETE FROM wp_usermeta WHERE meta_key IN ('vitor_flagged_registration');
DELETE FROM wp_termmeta WHERE meta_key IN ('vitor_flagged_registration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vitor_flagged_registration');

