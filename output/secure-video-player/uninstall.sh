#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'svpdrm_widevine_px'
wp option delete 'svpdrm_playready_px'
wp option delete 'svpdrm_fairplay_px'

