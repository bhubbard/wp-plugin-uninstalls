#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_comments_vip_level_num_1'
wp option delete 'wp_comments_vip_level_num_2'
wp option delete 'wp_comments_vip_level_num_3'
wp option delete 'wp_comments_vip_level_num_4'
wp option delete 'wp_comments_vip_level_num_5'
wp option delete 'wp_comments_vip_level_num_6'
wp option delete 'wp_comments_vip_level_num_7'
wp option delete 'wp_comments_vip_display_admin_vip'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_comments_vip_level_num_%'"

