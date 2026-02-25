#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'changa_feeds'
wp option delete 'changa_generic_feed_appid'
wp option delete 'changa_generic_para'
wp option delete 'changa_needs_redirection'

