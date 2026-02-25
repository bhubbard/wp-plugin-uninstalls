-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brtg_post_type', 'brtg_bot_token', 'brtg_telegram_channels', 'brtg_msg_web_preview', 'brtg_msg_tpl', 'brtg_auto_send', 'brtg_delete_options', 'brtg_author', 'auto_send');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brtg_targetSent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brtg_targetSent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brtg_targetSent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brtg_targetSent');

