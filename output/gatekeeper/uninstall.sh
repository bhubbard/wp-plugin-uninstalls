#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gatekeeper_active'
wp option delete 'gatekeeper_placeholder_redirect_page'
wp option delete 'gatekeeper_placeholder_behavior'
wp option delete 'gatekeeper_allowadmins'
wp option delete 'gatekeeper_autoprotect_adminip'
wp option delete 'gatekeeper_adminip'
wp option delete 'gatekeeper_whitelist'
wp option delete 'gatekeeper_blacklist_behavior'
wp option delete 'gatekeeper_blacklist_redirect_page'
wp option delete 'gatekeeper_blacklist'
wp option delete 'gatekeeper_stats_blacklist_blocks'
wp option delete 'gatekeeper_stats_whitelist_views'
wp option delete 'gatekeeper_stats_offline_redirects'

