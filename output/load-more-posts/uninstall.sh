#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_load_posts_date'
wp option delete 'wp_load_posts_comment'
wp option delete 'wp_load_post_category'
wp option delete 'wp_load_default_col'
wp option delete 'wp_post_per_page'
wp option delete 'wp_load_more_btn_Txt'
wp option delete 'wp_load_more_Bg_color'
wp option delete 'wp_load_more_Tx_color'
wp option delete 'wp_load_more_Hbg_color'
wp option delete 'wp_load_more_Htx_color'
wp option delete 'wp_load_less_Btn'
wp option delete 'wp_hide_btn_Txt'
wp option delete 'wp_post_excerpt_content'

