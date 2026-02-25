#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deau_api'
wp option delete 'deau_api_shortcodes'
wp option delete 'deau_api_shortcode_history'
wp option delete 'deau_api_localhost'

