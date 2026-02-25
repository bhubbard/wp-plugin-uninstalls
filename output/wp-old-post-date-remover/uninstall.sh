#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_old_post_date_remover_settings'
wp option delete 'opdr_days_to_show_date'

