#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nearst_upload_key'
wp option delete 'nearst_last_error'
wp option delete 'nearst_upload_type'
wp option delete 'nearst_last_upload_products'
wp option delete 'nearst_last_upload'
wp option delete 'nearst_product_identifier'
wp option delete 'nearst_activated'
wp option delete 'nearst_auto_update_enabled'
wp option delete 'auto_update_plugins'

# Clear Cron Jobs
wp cron event delete 'nearst_regular_upload'

