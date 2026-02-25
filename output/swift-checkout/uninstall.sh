#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swifch_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'swifch_version'
wp option delete 'swifch_installed_time'

