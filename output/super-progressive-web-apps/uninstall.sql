-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('superpwa_apple_icons_uploaded', 'superpwa_apple_icons_settings', 'superpwa_caching_strategies_settings', 'superpwa_pull_to_refresh_settings', 'superpwa_utm_tracking_settings', 'superpwa_active_addons', 'superpwa_hide_newsletter', 'superpwa_pro_upgrade_license', 'superpwa_settings', 'superpwa_version', 'superpwa_active_sites', 'superpwa_wpml_settings', 'superpwa_wp_multilang_settings', 'superpwa_polylang_settings', 'superpwa_translatepress_settings', 'superpwa_pre_cache_post_ids', 'superpwa_admin_notice_activation', 'superpwa_network_admin_notice_activation', 'superpwa_admin_notice_upgrade_complete');

