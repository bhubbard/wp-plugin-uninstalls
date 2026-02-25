-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptelegram_ver', 'wptelegram_telegram', 'wptelegram', 'wptelegram_wordpress', 'wptelegram_message', 'wptelegram_notify', 'wptelegram_proxy', 'wptelegram_p2tg', 'wptelegram_p2tg_errors');
DELETE FROM wp_options WHERE option_name LIKE 'wptelegram_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%sent2tg';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%sent2tg';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%sent2tg';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sent2tg';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%options';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%send2tg';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%send2tg';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%send2tg';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%send2tg';

