#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_txt_generator_last_update'
wp option delete 'llms_txt_generator_options'
wp option delete 'llms_txt_generator_validation'

# Delete Transients
wp transient delete 'llms_txt_validation_errors'

# Clear Cron Jobs
wp cron event delete 'llms_txt_generator_monthly_update'

