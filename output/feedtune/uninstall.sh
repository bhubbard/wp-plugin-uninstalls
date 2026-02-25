#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'feedtune_enabled_feeds'
wp option delete 'feedtune_feed_redirect'
wp option delete 'feedtune_redirect_http_code'

