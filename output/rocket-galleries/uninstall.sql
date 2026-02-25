-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocketgalleries_disable_welcome_panel', 'rocketgalleries_version', 'rocketgalleries_settings');

