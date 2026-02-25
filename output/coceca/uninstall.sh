#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'EXT_SITE_URL'
wp option delete 'active_sitewide_plugins'
wp option delete 'recently_activated'

