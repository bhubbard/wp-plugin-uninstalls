-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zhanzhangb_share_location', 'zhanzhangb_share_weixin_AppID', 'zhanzhangb_share_weixin_AppSecret', 'zhanzhangb_share_weibo_Appkey', 'zhanzhangb_share_weibo_uid');

