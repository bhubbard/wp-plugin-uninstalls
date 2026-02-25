#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpjomniaga_username'
wp option delete 'wpjomniaga_tracking_code'
wp option delete 'wpjomniaga_category'
wp option delete 'wpjomniaga_related_show'
wp option delete 'wpjomniaga_related_title'
wp option delete 'wpjomniaga_related_number'
wp option delete 'wpjomniaga_convert_home'
wp option delete 'wpjomniaga_convert_single_post'
wp option delete 'wpjomniaga_convert_single_page'
wp option delete 'wpjomniaga_convert_comment'
wp option delete 'wpjomniaga_convert_archive'
wp option delete 'wpjomniaga_convert_limit_perpage'
wp option delete 'wpjomniaga_keyword_limit_perpage'
wp option delete 'wpjomniaga_convert_limit_percomment'
wp option delete 'wpjomniaga_keyword_limit_percomment'
wp option delete 'wpjomniaga_link_new_window'
wp option delete 'wpjomniaga_link_no_follow'

