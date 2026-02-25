#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'

# Clear Cron Jobs
wp cron event delete 'wpseo_onpage_fetch'

