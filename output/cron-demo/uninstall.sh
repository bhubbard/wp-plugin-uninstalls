#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dprx_crondemo_mail'
wp option delete 'dprx_crondemo_inseconds'
wp option delete 'dprx_crondemo_recc'
wp option delete 'dprx_crondemo_triggercount'

# Clear Cron Jobs
wp cron event delete 'dprx_crondemo_hook'

