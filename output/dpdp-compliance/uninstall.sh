#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpdp_settings'
wp option delete 'dpdp_policy_text'
wp option delete 'dpdp_total_consents'

# Clear Cron Jobs
wp cron event delete 'dpdp_retention_purge'

