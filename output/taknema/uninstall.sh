#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taknema_storage_method'
wp option delete 'taknema_filter_pages'
wp option delete 'taknema_post_types'
wp option delete 'taknema_custom_pages'
wp option delete 'taknema_enable_debug'
wp option delete 'taknema_exclude_categories'
wp option delete 'taknema_disable_tracking'
wp option delete 'taknema_version'
wp option delete 'taknema_activation_sent'
wp option delete 'taknema_last_check'

# Delete Transients
wp transient delete 'taknema_activation_notice'

