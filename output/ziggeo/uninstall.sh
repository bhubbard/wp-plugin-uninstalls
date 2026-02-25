#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ziggeo_video'
wp option delete 'ziggeo_events'
wp option delete 'ziggeo_templates'
wp option delete 'ziggeo_keys'
wp option delete 'ziggeo_translations'
wp option delete 'ziggeo_notifications'
wp option delete 'ziggeo_videos_count'

