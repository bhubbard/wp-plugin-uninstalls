#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zhanzhangb_share_location'
wp option delete 'zhanzhangb_share_weixin_AppID'
wp option delete 'zhanzhangb_share_weixin_AppSecret'
wp option delete 'zhanzhangb_share_weibo_Appkey'
wp option delete 'zhanzhangb_share_weibo_uid'

