#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ais_services_last_changed'
wp option delete 'active_sitewide_plugins'

