#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpu_update_blocked_plugins'
wp option delete '_site_transient_update_plugins'

