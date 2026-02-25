#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woopra'
wp option delete 'woopra_auto_tag_commentators'
wp option delete 'woopra_ignore_admin'
wp option delete 'woopra_track_admin'
wp option delete 'woopra_show_comments'
wp option delete 'woopra_show_searches'
wp option delete 'woopra_api_key'
wp option delete 'woopra_analytics_tab'

