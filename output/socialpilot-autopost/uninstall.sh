#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialpilot_options'
wp option delete 'socialpilot_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'socialpilot_cron_hook'

