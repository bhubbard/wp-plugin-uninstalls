#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revampcrm_woocommerce_version'
wp option delete 'revampcrm-woocommerce-resource-last-updated'
wp option delete 'revampcrm-woocommerce'
wp option delete 'revampcrm-woocommerce-store_id'
wp option delete 'revampcrm-woocommerce-sync.started_at'
wp option delete 'revampcrm-woocommerce-sync.completed_at'
wp option delete 'revampcrm_woocommerce_plugin_do_activation_redirect'
wp option delete 'revampcrm-woocommerce-sync.products.completed_at'
wp option delete 'revampcrm-woocommerce-sync.products.current_page'
wp option delete 'revampcrm-woocommerce-sync.orders.prevent'
wp option delete 'revampcrm-woocommerce-sync.orders.completed_at'
wp option delete 'revampcrm-woocommerce-sync.orders.current_page'
wp option delete 'revampcrm-woocommerce-sync.syncing'
wp option delete 'revampcrm-woocommerce-errors.store_info'
wp option delete 'revampcrm-woocommerce-validation.api.ping'
wp option delete 'revampcrm-woocommerce-cached-api-lists'
wp option delete 'revampcrm-woocommerce-cached-api-ping-check'
wp option delete 'revampcrm_woocommerce_db_revampcrm_carts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'revampcrm-woocommerce-%'"

# Delete Transients
wp transient delete 'http_worker_lock'

# Clear Cron Jobs
wp cron event delete 'revampcrm_sync_task_hook'
wp cron event delete 'http_worker_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'revampcrm_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'revampcrm_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'revampcrm_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'revampcrm_woocommerce_is_subscribed'"
