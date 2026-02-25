#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_awp_services'
wp option delete 'wp_awp_options'
wp option delete 'wp_awp_lock'
wp option delete 'wp_awp_failed_ip'
wp option delete 'wp_awp_locked_ip'

