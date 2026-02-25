#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmp_settings'
wp option delete 'wpmp_notice'
wp option delete 'wp-maintenance-page'
wp option delete 'wp-maintenance-page-msqld'
wp option delete 'wpmp_version'

