#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wya11y_settings'
wp option delete 'easywpstuff_assesplus_booster_options'
wp option delete 'wya11y_statement_page'
wp option delete 'wya11y_banner_states'
wp option delete 'wya11y_plugin_activated_at'
wp option delete 'wya11y_statement'
wp option delete 'wya11y_version'
wp option delete 'wya11y_first_time_activated_plugin'

# Delete Transients
wp transient delete '_wya11y_first_time_install'
wp transient delete 'wya11y_first_time_install'

