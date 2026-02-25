#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orfw_version'
wp option delete 'orfw_db_version'
wp option delete 'active_sitewide_plugins'

