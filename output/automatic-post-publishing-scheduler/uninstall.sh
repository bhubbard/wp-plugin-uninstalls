#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publish_scheduler_options'
wp option delete 'wwm_scheduler_general_options'
wp option delete 'wwm_pubscheduler_db_version'

