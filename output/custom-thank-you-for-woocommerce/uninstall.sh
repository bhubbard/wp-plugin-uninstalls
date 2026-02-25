#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctyw_page_id'
wp option delete 'ctyw_info'
wp option delete 'ctyw_notice_dismiss'
wp option delete 'ctyw_enable_fb_social_box'
wp option delete 'ctyw_enable_twitter_social_box'
wp option delete 'ctyw_enable_pinterest_social_box'
wp option delete 'wc_custom_page_info'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_custom_thanks_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_custom_thanks_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_custom_thanks_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_custom_thanks_redirect'"
