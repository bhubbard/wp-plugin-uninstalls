#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sspdt_feed_options'
wp option delete 'sspdt_api_key'
wp option delete 'sspdt_api_path'
wp option delete 'sspdt_format_options'
wp option delete 'sspdt_api_cache'
wp option delete 'sspdt_helpers'
wp option delete 'sspdt_defaults'
wp option delete 'sspdt_fancybox'
wp option delete 'widget_sspdt_widget'

