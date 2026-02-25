#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foa_wc_email_blacklist'

# Clear Cron Jobs
wp cron event delete 'wedb_check_external_domain_update'

