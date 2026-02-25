#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bxslider_wp_auto_start'
wp option delete 'bxslider_wp_slide_mode'
wp option delete 'bxslider_wp_slide_speed'
wp option delete 'bxslider_wp_slide_delay'
wp option delete 'bxslider_wp_slide_size'
wp option delete 'bxslider_wp_slide_infiniteLoop'
wp option delete 'bxslider_wp_home_image_url1'
wp option delete 'bxslider_wp_home_image_url2'
wp option delete 'bxslider_wp_home_image_url3'
wp option delete 'bxslider_wp_home_image_url4'
wp option delete 'bxslider_wp_slide_javascript'
wp option delete 'bx_wp_btn_num'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bxslider_wp_home_image_url%'"
wp option delete 'bxslider_wp_dir'

