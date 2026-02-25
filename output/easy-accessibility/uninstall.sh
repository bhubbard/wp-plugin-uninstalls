#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eacs_icon_type'
wp option delete 'eacs_icon_pos'
wp option delete 'eacs_icon_color'
wp option delete 'eacs_icon_bg_color'
wp option delete 'eacs_icon_hcolor'
wp option delete 'eacs_icon_hbgcolor'
wp option delete 'eacs_toolbox_heading'
wp option delete 'eacs_toolbar_color'
wp option delete 'eacs_toolbar_bg_color'
wp option delete 'eacs_titem_color'
wp option delete 'eacs_titem_bg_color'
wp option delete 'eacs_titem_hcolor'
wp option delete 'eacs_titem_hbgcolor'
wp option delete 'eacs_ticon_color'

