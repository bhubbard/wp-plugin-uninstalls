#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfw_style'
wp option delete 'rfw_mutes'
wp option delete 'rfw_rss_image_size'
wp option delete 'rfw_sc_ids'
wp option delete 'rfw_sc_google_api_key'
wp option delete 'rfw_custom_tag_patterns'
wp option delete 'rsfw_options'
wp option delete 'rfw_short_code_list'
wp option delete 'rfw_short_code_settings'
wp option delete 'widget_rfw_dock'

