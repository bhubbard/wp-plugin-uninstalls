#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbvmfp_peertube_url'
wp option delete 'cbvmfp_peertube_anzahl_videos'
wp option delete 'cbvmfp_peertube_channel'
wp option delete 'cbvmfp_livestream_fallback_type'
wp option delete 'cbvmfp_livestream_fallback_image'
wp option delete 'cbvmfp_livestream_fallback_video'

