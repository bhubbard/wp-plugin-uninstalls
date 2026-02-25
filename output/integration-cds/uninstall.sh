#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icds_connection'
wp option delete 'icds_version'
wp option delete 'icds_savedtemplates'
wp option delete 'icds_formregistrations'
wp option delete 'icds_binding'
wp option delete 'icds_userBinding'

# Clear Cron Jobs
wp cron event delete 'integration-cds/cache/warmup'

