#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_ad_below_title'
wp option delete 'easy_ad_below_content'
wp option delete 'easy_ad_inbetween'
wp option delete 'easy_ad_paragraph_position'
wp option delete 'easy_ad_above_header'
wp option delete 'easy_ad_below_footer'

