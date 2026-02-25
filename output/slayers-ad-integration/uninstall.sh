#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slayer_ad_ads'
wp option delete 'slayer_ad_css'
wp option delete 'slayer_ad_html_before'
wp option delete 'slayer_ad_html_after'
wp option delete 'slayer_ad_max_count_per_page'

