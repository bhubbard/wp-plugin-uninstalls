#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cya11y_widget_settings'
wp option delete 'widget_accesstxt'
wp option delete 'cya11y_banners'
wp option delete 'cya11y_version'
wp option delete 'cya11y_first_time_activated_plugin'

# Delete Transients
wp transient delete '_cya11y_first_time_install'
wp transient delete 'cya11y_first_time_install'

