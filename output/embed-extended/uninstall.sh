#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'embed_extended_version'
wp option delete 'embed_extended_notice_dismiss_greeting'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'embed_extended_notice_dismiss_%'"
wp option delete 'embed_extended_url_patterns'
wp option delete 'embed_extended_url_patterns_mode'
wp option delete 'embed_extended_gmaps_api_key'
wp option delete 'embed_extended_parse_html_content'
wp option delete 'embed_extended_thumbnail_position'
wp option delete 'embed_extended_custom_css'

