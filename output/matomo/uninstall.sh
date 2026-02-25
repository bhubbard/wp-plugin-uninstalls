#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wp-piwik_global-piwik_mode'
wp option delete 'matomo_plugin_do_activation_redirect'

