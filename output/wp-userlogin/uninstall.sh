#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpul_settings'
wp option delete 'set_checkbox'
wp option delete 'redirect'
wp option delete 'redirect_out'
wp option delete 'welcome'
wp option delete 'use_stylesheet'
wp option delete 'set_nonlog'
wp option delete 'set_log'
wp option delete '_site_transient_update_core'
wp option delete '_site_transient_update_plugins'

