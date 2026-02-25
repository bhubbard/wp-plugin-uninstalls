#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blip_widget_last_cache'
wp option delete 'blip_widget_cache'
wp option delete 'blip_widget_feed'

