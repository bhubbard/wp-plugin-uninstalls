#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snordiansh5pcontenttyperepositorymanager_defaults_set'
wp option delete 'snordiansh5pcontenttyperepositorymanager_option'

# Clear Cron Jobs
wp cron event delete 'snordiansh5pcontenttyperepositorymanager_update_libraries'

