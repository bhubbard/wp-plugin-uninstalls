-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpwhpro_activate_translations', 'wpwhpro_activate_debug_mode', 'wpwhpro_deactivate_post_delay', 'wpwhpro_show_main_menu', 'wpwhpro_reset_data', 'wpwhpro_trigger_secret', 'wsblc_options', 'wppb_general_settings', 'wpwhcf7_preserved_files', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit', '_wppb_admin_approval_link_param', 'wpwhpro_create_post_temp_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit', '_wppb_admin_approval_link_param', 'wpwhpro_create_post_temp_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit', '_wppb_admin_approval_link_param', 'wpwhpro_create_post_temp_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_subscription_payment', 'edd_price', 'edd_variable_prices', 'edd_download_files', '_edd_bundled_products', '_edd_bundled_products_conditions', '_variable_pricing', '_edd_default_price_id', '_edd_hide_purchase_link', '_edd_download_limit', '_wppb_admin_approval_link_param', 'wpwhpro_create_post_temp_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpwhpro_create_post_temp_status_%';

