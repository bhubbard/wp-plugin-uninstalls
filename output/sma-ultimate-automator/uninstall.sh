#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpua_auto_publish_enabled'
wp option delete 'wpua_auto_delete_spam_enabled'
wp option delete 'wpua_auto_assign_category_enabled'
wp option delete 'wpua_auto_resize_images_enabled'
wp option delete 'wpua_auto_clear_cache_enabled'
wp option delete 'wpua_image_resize_width'

# Clear Cron Jobs
wp cron event delete 'wpua_auto_delete_spam_hook'
wp cron event delete 'wpua_auto_publish_hook'

