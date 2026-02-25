#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swarmify_status'
wp option delete 'swarmify_cdn_key'
wp option delete 'swarmify_toggle_youtube'
wp option delete 'swarmify_toggle_youtube_cc'
wp option delete 'swarmify_toggle_layout'
wp option delete 'swarmify_toggle_bgvideo'
wp option delete 'swarmify_theme_button'
wp option delete 'swarmify_toggle_uploadacceleration'
wp option delete 'swarmify_theme_primarycolor'
wp option delete 'swarmify_watermark'
wp option delete 'swarmify_ads_vasturl'

