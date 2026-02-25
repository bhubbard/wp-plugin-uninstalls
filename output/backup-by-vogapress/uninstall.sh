#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'cloudflare_api_key'
wp option delete 'cloudflare_api_email'

