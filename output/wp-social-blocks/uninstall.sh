#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fb_page_link'
wp option delete 'fblb_width'
wp option delete 'fblb_height'
wp option delete 'fblb_stream'
wp option delete 'fblb_header'
wp option delete 'fblb_border'
wp option delete 'fblb_color'
wp option delete 'fblb_profile'
wp option delete 'tw_widgetid'
wp option delete 'tw_width'
wp option delete 'tw_height'
wp option delete 'tw_tweetlimit'
wp option delete 'tw_noheader'
wp option delete 'tw_nofooter'
wp option delete 'tw_noborders'
wp option delete 'tw_noscrollbar'
wp option delete 'tw_theme'

