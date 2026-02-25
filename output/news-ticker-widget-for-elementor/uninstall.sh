#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_notice'
wp option delete 'current_date'
wp option delete 'week_notice_date'

