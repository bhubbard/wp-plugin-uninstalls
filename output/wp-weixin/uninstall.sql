-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_weixin_settings', 'wp_weixin_auth_blog_id', 'wp_weixin_pay_blog_id', 'wp_weixin_plugin_version', 'wp_weixin_subscribe_qr_url', 'wp_weixin_flush', 'wp_weixin_requesting_token', 'wp_weixin_jsapi_ticket');
DELETE FROM wp_options WHERE option_name LIKE 'wp_weixin_access_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_weixin_access_token_expiry_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_weixin_qr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wx_follower', 'wp_weixin_before_subscription', 'wx_unionid', 'wp_weixin_rawdata', '_menu_item_url', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_orphaned', 'wechat_link_title', 'wechat_link_description', 'wechat_link_thumb_url', 'wp_weixin_language', 'wp_weixin_headimgurl');
DELETE FROM wp_usermeta WHERE meta_key IN ('wx_follower', 'wp_weixin_before_subscription', 'wx_unionid', 'wp_weixin_rawdata', '_menu_item_url', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_orphaned', 'wechat_link_title', 'wechat_link_description', 'wechat_link_thumb_url', 'wp_weixin_language', 'wp_weixin_headimgurl');
DELETE FROM wp_termmeta WHERE meta_key IN ('wx_follower', 'wp_weixin_before_subscription', 'wx_unionid', 'wp_weixin_rawdata', '_menu_item_url', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_orphaned', 'wechat_link_title', 'wechat_link_description', 'wechat_link_thumb_url', 'wp_weixin_language', 'wp_weixin_headimgurl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wx_follower', 'wp_weixin_before_subscription', 'wx_unionid', 'wp_weixin_rawdata', '_menu_item_url', '_menu_item_type', '_menu_item_menu_item_parent', '_menu_item_object_id', '_menu_item_object', '_menu_item_target', '_menu_item_classes', '_menu_item_xfn', '_menu_item_orphaned', 'wechat_link_title', 'wechat_link_description', 'wechat_link_thumb_url', 'wp_weixin_language', 'wp_weixin_headimgurl');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wx_openid-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wx_openid-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wx_openid-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wx_openid-%';

