#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conflict_finder_email_test_status'
wp option delete 'conflict_finder_plugins_temporarily_deactivated'
wp option delete 'conflict_finder_theme_temporarily_switched'
wp option delete 'conflict_finder_saved_active_theme'
wp option delete 'conflict_finder_saved_active_plugins'

