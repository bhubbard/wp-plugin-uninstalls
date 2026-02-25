#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Plugin'
wp option delete 'wp_sonetel_accountId'
wp option delete 'wp_sonetel_activated'
wp option delete 'wp_sonetel_bar_activated'
wp option delete 'wp_sonetel_window_close'
wp option delete 'wp_sonetel_window_reload'

