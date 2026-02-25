-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapppress_last_build', 'wapppress_settings', 'wapppress_license', 'WAPPPRESS_SETTINGS', 'INSTANTAPPY_active_sites', 'INSTANTAPPY_version', 'INSTANTAPPY_settings', 'instantappy_pwa_manifest_version', 'wapppress_trial_notice', 'INSTANTAPPY_notice_activation', 'INSTANTAPPY_network_admin_notice_activation');

