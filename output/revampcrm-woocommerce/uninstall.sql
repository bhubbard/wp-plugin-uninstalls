-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revampcrm_woocommerce_version', 'revampcrm-woocommerce-resource-last-updated', 'revampcrm-woocommerce', 'revampcrm-woocommerce-store_id', 'revampcrm-woocommerce-sync.started_at', 'revampcrm-woocommerce-sync.completed_at', 'revampcrm_woocommerce_plugin_do_activation_redirect', 'revampcrm-woocommerce-sync.products.completed_at', 'revampcrm-woocommerce-sync.products.current_page', 'revampcrm-woocommerce-sync.orders.prevent', 'revampcrm-woocommerce-sync.orders.completed_at', 'revampcrm-woocommerce-sync.orders.current_page', 'revampcrm-woocommerce-sync.syncing', 'revampcrm-woocommerce-errors.store_info', 'revampcrm-woocommerce-validation.api.ping', 'revampcrm-woocommerce-cached-api-lists', 'revampcrm-woocommerce-cached-api-ping-check', 'revampcrm_woocommerce_db_revampcrm_carts', 'http_worker_lock');
DELETE FROM wp_options WHERE option_name LIKE 'revampcrm-woocommerce-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('revampcrm_woocommerce_is_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('revampcrm_woocommerce_is_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('revampcrm_woocommerce_is_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('revampcrm_woocommerce_is_subscribed');

