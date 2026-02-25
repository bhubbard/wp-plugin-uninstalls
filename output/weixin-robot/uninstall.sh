#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpjam_net_domain_check_56'
wp option delete 'weixin-custom-menus'
wp option delete 'weixin-robot-extends'
wp option delete 'weixin_api_access_tokens'
wp option delete 'weixin-robot'

# Delete Transients
wp transient delete 'weixin_kf_list'
wp transient delete 'weixin_online_kf_list'
wp transient delete 'weixin_access_token'
wp transient delete 'weixin_access_token_expires'
wp transient delete 'weixin_clear_quota'
wp transient delete 'ip_list'
wp transient delete 'weixin_js_api_ticket'
wp transient delete 'weixin_js_api_ticket_expires'
wp transient delete 'weixin_wx_card_ticket'
wp transient delete 'weixin_wx_card_ticket_expires'
wp transient delete 'weixin_material_count'
wp transient delete 'weixin_builtin_replies'
wp transient delete 'weixin_builtin_replies_new'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_weixin_custom_keywords_%' OR option_name LIKE '_site_transient_weixin_custom_keywords_%'"

# Clear Cron Jobs
wp cron event delete 'weixin_send_future_mass_message'
wp cron event delete 'weixin_delete_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'weixin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'weixin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'weixin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'weixin_url'"
