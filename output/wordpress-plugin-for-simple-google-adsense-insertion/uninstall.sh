#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_in_article_ad_code'
wp option delete 'wp_post_article_ad_code'
wp option delete 'wp_ad_camp_1_code'
wp option delete 'wp_ad_camp_2_code'
wp option delete 'wp_ad_camp_3_code'
wp option delete 'wp_ad_camp_4_code'
wp option delete 'wp_ad_camp_5_code'

