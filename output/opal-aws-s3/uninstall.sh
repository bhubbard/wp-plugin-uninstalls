#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oaws_cloudfront_url'
wp option delete 'oaws_status_connection'
wp option delete 'oaws_updated_settings'
wp option delete 'active_sitewide_plugins'

