-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mercantor_feed_token', 'mercantor_wizard_data', 'mercantor_google_client_id', 'mercantor_google_client_secret', 'woo_feed_auto_update_interval', 'woo_feed_batch_limit', 'mercantor_migration_completed', 'mercantor_settings', 'mercantor_rules', 'trp_settings', 'mercantor_exchange_rates', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'mercantor_sync_total', 'mercantor_sync_processed', 'mercantor_sync_started_at', 'mercantor_oauth_state', 'mercantor_oauth_return_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_global_unique_id', '_mpn', '_brand', 'mercantor_setup_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_global_unique_id', '_mpn', '_brand', 'mercantor_setup_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_global_unique_id', '_mpn', '_brand', 'mercantor_setup_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_global_unique_id', '_mpn', '_brand', 'mercantor_setup_notice_dismissed');

