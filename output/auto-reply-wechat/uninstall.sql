-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wechatreplay_wzt_token1', 'wechatreplay_wzt_token2', 'wechatreplay_wzt_token3', 'wechat_replay', 'wechat_replay_qrcode', 'WechatReplay_captcha', 'WechatReplay_login', 'WechatReplay_access_token', 'WechatReplay_art_tongbu', 'WechatReplay_tongbu_num', 'wechat_replay_share', 'wechatreplay_tongji', 'wechatreplay_level', 'WechatReplay_log', 'wechatreplay_shouquan', 'WechatReplay_wzt_token1', 'WechatReplay_wzt_token2', 'WechatReplay_wzt_token3');
DELETE FROM wp_options WHERE option_name LIKE 'WechatReplay_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wechatreplay_key', 'wechatreplay_openid', 'wechatreplay_article', 'WechatReplay_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('wechatreplay_key', 'wechatreplay_openid', 'wechatreplay_article', 'WechatReplay_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('wechatreplay_key', 'wechatreplay_openid', 'wechatreplay_article', 'WechatReplay_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wechatreplay_key', 'wechatreplay_openid', 'wechatreplay_article', 'WechatReplay_content');

