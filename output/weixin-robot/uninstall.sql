-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjam_net_domain_check_56', 'weixin-custom-menus', 'weixin-robot-extends', 'weixin_api_access_tokens', 'weixin-robot', 'weixin_kf_list', 'weixin_online_kf_list', 'weixin_access_token', 'weixin_access_token_expires', 'weixin_clear_quota', 'ip_list', 'weixin_js_api_ticket', 'weixin_js_api_ticket_expires', 'weixin_wx_card_ticket', 'weixin_wx_card_ticket_expires', 'weixin_material_count', 'weixin_builtin_replies', 'weixin_builtin_replies_new');
DELETE FROM wp_options WHERE option_name LIKE 'weixin_custom_keywords_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('weixin_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('weixin_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('weixin_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('weixin_url');

