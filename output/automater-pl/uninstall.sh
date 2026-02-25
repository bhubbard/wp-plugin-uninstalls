#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'update_stocks_job_action'

