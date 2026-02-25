-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zoooom_settings', 'zoooom_general', 'fusion_options', 'zoooom_activation_time', 'zoooom_version', 'zoooom_dismiss_notice');

