#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_jenkins_user'
wp option delete 'shift8_jenkins_api'
wp option delete 'shift8_jenkins_url'
wp option delete 'shift8_jenkins_db_version'

# Clear Cron Jobs
wp cron event delete 'shift8_jenkins_cron_hook'

