#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fpw_use_js'
wp option delete 'fpw_use_streaming'
wp option delete 'fpw_width'
wp option delete 'fpw_height'
wp option delete 'fpw_license'
wp option delete 'fpw_autoplay'
wp option delete 'fpw_autobuffer'
wp option delete 'fpw_allowfs'
wp option delete 'fpw_bgcolor'
wp option delete 'fpw_root_path'
wp option delete 'fpw_player'
wp option delete 'fpw_streaming'
wp option delete 'fpw_js'
wp option delete 'fpw_playpicpath'
wp option delete 'fpw_splash'

