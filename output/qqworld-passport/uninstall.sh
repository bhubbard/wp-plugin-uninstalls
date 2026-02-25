#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qqworld-passport-modules'
wp option delete 'qqworld-passport-avatar-priority'
wp option delete 'qqworld-passport-automatic-register'
wp option delete 'qqworld-passport-module-qq'
wp option delete 'qqworld-passport-module-wechat'
wp option delete 'qqworld-passport-module-weibo'
wp option delete 'qqworld-passport-module-baidu'
wp option delete 'qqworld-passport-module-xiaomi'
wp option delete 'qqworld-passport-module-taobao'
wp option delete 'qqworld-passport-module-alipay'
wp option delete 'qqworld-passport-module-facebook'
wp option delete 'qqworld-passport-module-twitter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qqworld-passport-module-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Alipay User ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Alipay User ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Alipay User ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Alipay User ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Baidu Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Baidu Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Baidu Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Baidu Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Facebook Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Facebook Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Facebook Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Facebook Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Google Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Google Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Google Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Google Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Line User ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Line User ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Line User ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Line User ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport QQ Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport QQ Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport QQ Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport QQ Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Taobao User ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Taobao User ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Taobao User ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Taobao User ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Twitter Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Twitter Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Twitter Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Twitter Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Wechat Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Wechat Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Wechat Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Wechat Openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Wechat Unionid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Wechat Unionid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Wechat Unionid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Wechat Unionid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Weibo Uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Weibo Uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Weibo Uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Weibo Uid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'QQWorld Passport Xiaomi Openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'QQWorld Passport Xiaomi Openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'QQWorld Passport Xiaomi Openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'QQWorld Passport Xiaomi Openid'"
