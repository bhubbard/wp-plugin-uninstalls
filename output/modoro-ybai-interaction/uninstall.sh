#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ybai_access_key'
wp option delete 'ybai_secret_key'
wp option delete 'ybai_param_key'
wp option delete 'ybai_head_script'
wp option delete 'channel_id'
wp option delete 'ybai_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_affiliate_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_affiliate_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_affiliate_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_affiliate_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_error_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ybai_affiliate_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ybai_affiliate_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ybai_affiliate_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ybai_affiliate_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_order_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_order_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_order_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_order_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ybai_affiliate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ybai_affiliate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ybai_affiliate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ybai_affiliate'"
