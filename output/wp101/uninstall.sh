#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp101-available-series'
wp option delete 'wp101_api_key'
wp option delete 'wp101_custom_topics'
wp option delete 'wp101_hidden_topics'
wp option delete 'wp101-bulk-migration-lock'
wp option delete 'wp101_db_version'
wp option delete 'wp101_admin_restriction'

# Delete Transients
wp transient delete 'wp101_topics'
wp transient delete 'wp101_jetpack_topics'
wp transient delete 'wp101_woocommerce_topics'
wp transient delete 'wp101_wpseo_topics'
wp transient delete 'wp101_message'
wp transient delete 'wp101_get_admin_count'
wp transient delete 'wp101_api_key_valid'

# Clear Cron Jobs
wp cron event delete 'wp101-bulk-migration'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp101-dismissed-notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp101-dismissed-notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp101-dismissed-notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp101-dismissed-notifications'"
