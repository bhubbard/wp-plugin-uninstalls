#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_tinywebdb_api_url_trigger'
wp option delete 'wp_tinywebdb_api_key'
wp option delete 'wp_tinywebdb_api_tag_type'

