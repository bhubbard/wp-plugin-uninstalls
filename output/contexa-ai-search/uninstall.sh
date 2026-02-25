#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contexa_api_key'
wp option delete 'contexa_api_url'
wp option delete 'contexa_auto_sync'
wp option delete 'contexa_content_auto_sync'
wp option delete 'contexa_content_sync_types'
wp option delete 'contexa_content_sync_enabled'
wp option delete 'contexa_error_logging_enabled'
wp option delete 'contexa_log_to_remote'
wp option delete 'contexa_remote_log_url'
wp option delete 'contexa_remote_logging_enabled'
wp option delete 'contexa_tracking_enabled'
wp option delete 'contexa_cache_ttl'
wp option delete 'woocommerce_currency_pos'
wp option delete 'contexa_backend_url'

# Delete Transients
wp transient delete 'contexa_activation_redirect'
wp transient delete 'contexa_bulk_sync_products'
wp transient delete 'contexa_bulk_sync_start_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contexa_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contexa_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contexa_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contexa_tracked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_contexa_visitor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_contexa_visitor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_contexa_visitor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_contexa_visitor_id'"
