#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acau_first_activate'
wp option delete 'acau_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'acau_dismiss_notice'

