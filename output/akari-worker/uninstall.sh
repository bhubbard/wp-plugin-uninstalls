#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'akari_worker_available_storage'
wp option delete 'akari_worker_max_upload_size'
wp option delete 'akari_worker_google_analytics_id'
wp option delete 'akari_worker_meta_pixel_id'
wp option delete 'akari_worker_custom_script'

