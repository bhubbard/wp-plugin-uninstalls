#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atpcn_page_id'
wp option delete 'atpcn_link'
wp option delete 'atpcn_text'
wp option delete 'atpcn_left_right'
wp option delete 'atpcn_bottom_top'
wp option delete 'atpcn_hide_pc'
wp option delete 'atpcn_hide_mb'
wp option delete 'atpcn_image_url'
wp option delete 'atpcn_size'
wp option delete 'atpcn_long'
wp option delete 'atpcn_color'
wp option delete 'atpcn_color_bg'
wp option delete 'atpcn_color_text'
wp option delete 'atpcn_not_page_id'

