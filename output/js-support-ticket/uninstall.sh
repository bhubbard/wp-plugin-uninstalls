#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'jssupportticket'
wp option delete 'jssupportticket-pageid'
wp option delete 'jssupportticket_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'jssupporticket_updateticketstatus'

