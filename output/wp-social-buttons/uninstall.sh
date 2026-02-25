#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsb_active'
wp option delete 'wpsb_position'
wp option delete 'wpsb_hide_frame'
wp option delete 'wpsb_top_margin'
wp option delete 'wpsb_delayTimeBtn'
wp option delete 'wpsb_page_hide_home'
wp option delete 'wpsb_page_hide_post'
wp option delete 'wpsb_page_hide_page'
wp option delete 'wpsb_fpublishBtn'
wp option delete 'wpsb_ppublishBtn'
wp option delete 'wpsb_lpublishBtn'
wp option delete 'wpsb_twitterpublishBtn'
wp option delete 'wpsb_tumpublishBtn'
wp option delete 'wpsb_fb_url'
wp option delete 'wpsb_tw_url'
wp option delete 'wpsb_li_url'
wp option delete 'wpsb_pin_url'
wp option delete 'wpsb_deactive_for_mob'
wp option delete 'wpsb_disable_for_home'

