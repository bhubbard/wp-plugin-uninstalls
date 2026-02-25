#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wechatreplay_wzt_token1'
wp option delete 'wechatreplay_wzt_token2'
wp option delete 'wechatreplay_wzt_token3'
wp option delete 'wechat_replay'
wp option delete 'wechat_replay_qrcode'
wp option delete 'WechatReplay_captcha'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WechatReplay_%'"
wp option delete 'WechatReplay_login'
wp option delete 'WechatReplay_access_token'
wp option delete 'WechatReplay_art_tongbu'
wp option delete 'WechatReplay_tongbu_num'
wp option delete 'wechat_replay_share'
wp option delete 'wechatreplay_tongji'
wp option delete 'wechatreplay_level'
wp option delete 'WechatReplay_log'
wp option delete 'wechatreplay_shouquan'
wp option delete 'WechatReplay_wzt_token1'
wp option delete 'WechatReplay_wzt_token2'
wp option delete 'WechatReplay_wzt_token3'

# Clear Cron Jobs
wp cron event delete 'wechatreplay_cronhook1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wechatreplay_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wechatreplay_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wechatreplay_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wechatreplay_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wechatreplay_openid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wechatreplay_openid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wechatreplay_openid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wechatreplay_openid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wechatreplay_article'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wechatreplay_article'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wechatreplay_article'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wechatreplay_article'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WechatReplay_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WechatReplay_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WechatReplay_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WechatReplay_content'"
