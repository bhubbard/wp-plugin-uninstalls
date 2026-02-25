-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('serend_animations_debug_mode', 'serend_animations_activation_notice');

