#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catpostfilter_enable_filter'
wp option delete 'catpostfilter_bg_color'
wp option delete 'catpostfilter_text_color'
wp option delete 'catpostfilter_default_view'

