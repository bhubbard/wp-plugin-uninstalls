#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'change_wp_cron_domain'
wp option delete 'change_wp_cron_port'

