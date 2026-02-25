-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payplug_options', 'payplug_parameters', 'payplug_tracking_notice');
DELETE FROM wp_options WHERE option_name LIKE 'payplug_%';

