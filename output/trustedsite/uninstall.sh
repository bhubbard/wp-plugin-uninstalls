#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trustedsite_active'
wp option delete 'trustedsite_robots_enable'
wp option delete 'trustedsite_site_id'
wp option delete 'trustedsite_id'
wp option delete 'mcafeesecure_active'
wp option delete 'trustedsite_install_ping_done'
wp option delete 'trustedsite_data'
wp option delete 'trustedsite_plugin_error'

