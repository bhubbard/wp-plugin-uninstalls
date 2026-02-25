-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fupi_versions', 'fupi_tools', 'fupi_reports', 'fupi_main', 'fupi_proofrec', 'fupi_cook', 'fupi_pla', 'fupi_atrig', 'fupi_track', 'fupi_cscr', 'fupi_reactions', 'fupi_cegg', 'fupi_clar', 'fupi_cookie_notice', 'fupi_fbp1', 'fupi_ga41', 'fupi_gads', 'fupi_gtag', 'fupi_gtm', 'fupi_hotj', 'fupi_insp', 'fupi_linkd', 'fupi_mads', 'fupi_mato', 'fupi_pin', 'fupi_posthog', 'fupi_simpl', 'fupi_tik', 'fupi_twit', 'fupi_woo', 'woocommerce_feature_order_attribution_enabled', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fupi_activation_redirect', 'fupi_ga42', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'fupi_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fupi_adv_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('fupi_adv_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('fupi_adv_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fupi_adv_mode');

