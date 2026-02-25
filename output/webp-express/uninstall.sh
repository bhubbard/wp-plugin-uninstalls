#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webp-express-alter-html-replacement'
wp option delete 'webp-express-alter-html-hooks'
wp option delete 'webp-express-activation-error'
wp option delete 'cache-enabler'

# Clear Cron Jobs
wp cron event delete 'webp_express_task_regenerate_config_and_htaccess'
wp cron event delete 'webp_express_task_bulk_update_dummy_files'

