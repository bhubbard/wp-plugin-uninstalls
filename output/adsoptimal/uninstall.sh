#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adsoptimal_access_token'
wp option delete 'adsoptimal_email'
wp option delete 'adsoptimal_publisher_id'
wp option delete 'adsoptimal_settings'
wp option delete 'adsoptimal_enable_desktop_ad'
wp option delete 'adsoptimal_top_ad_alignment'
wp option delete 'adsoptimal_content_ad_alignment'
wp option delete 'adsoptimal_footer_ad_alignment'
wp option delete 'adsoptimal_enable_post_ad'
wp option delete 'adsoptimal_enable_page_ad'
wp option delete 'adsoptimal_top_ad_type'
wp option delete 'adsoptimal_content_ad_type'
wp option delete 'adsoptimal_footer_ad_type'
wp option delete 'adsoptimal_content_ad_every'

