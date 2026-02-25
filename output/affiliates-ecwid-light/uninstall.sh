#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'aff_cookie_timeout_days'
wp option delete 'aff_use_direct'

