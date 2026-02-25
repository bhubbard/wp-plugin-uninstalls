#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ads_exclude_ids'
wp option delete 'ads_main_enable'
wp option delete 'ads_post_top_enable'
wp option delete 'ads_post_top_desc'
wp option delete 'ads_post_top_corner_enable'
wp option delete 'ads_post_top_corner_desc'
wp option delete 'ads_post_first_p_enable'
wp option delete 'ads_post_first_p_desc'
wp option delete 'ads_post_bottom_enable'
wp option delete 'ads_post_bottom_desc'
wp option delete 'ads_page_top_enable'
wp option delete 'ads_page_top_desc'
wp option delete 'ads_page_bottom_enable'
wp option delete 'ads_page_bottom_desc'
wp option delete 'ads_shortcode_enable'
wp option delete 'ads_shortcode_desc'

