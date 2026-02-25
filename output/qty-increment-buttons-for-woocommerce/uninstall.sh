#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qib_dismiss_notice'
wp option delete 'qib_first_activate'
wp option delete 'qib_settingz'
wp option delete 'active_sitewide_plugins'

