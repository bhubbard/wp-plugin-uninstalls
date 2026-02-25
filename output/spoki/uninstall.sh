#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spoki_ca_gdpr_message'
wp option delete 'spoki_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'spoki_abandoned_carts_cron_hook'
wp cron event delete 'spoki_cron_hook'

