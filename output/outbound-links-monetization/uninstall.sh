#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shorten_url_api_key'
wp option delete 'shorten_url_access_token'
wp option delete 'allow_shorten_url'

