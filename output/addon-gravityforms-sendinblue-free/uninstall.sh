#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'dkgfsib-free_version'

# Delete Transients
wp transient delete 'wpconnectgfsib_deactivated_notice_id'

