-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('engagebay_livechat_rest_api', 'engagebay_livechat_domain', 'engagebay_livechat_email', 'engagebay_livechat_password', 'engagebay_livechat_js_api', 'engagebay_livechat_enabled');

