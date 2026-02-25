#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyber_disp_position'
wp option delete 'cyber_targetleft'
wp option delete 'cyber_targetright'
wp option delete 'cyber_targetop'
wp option delete 'cyber_targetbot'
wp option delete 'cyber_shortcode'
wp option delete 'cyber_page_show'
wp option delete 'cyber_height'
wp option delete 'cyber_width'

