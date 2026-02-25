#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spbp_enabled'
wp option delete 'spbp_popup_delay'
wp option delete 'spbp_popup_bg_color'
wp option delete 'spbp_popup_position'
wp option delete 'spbp_impressions'
wp option delete 'spbp_clicks'

