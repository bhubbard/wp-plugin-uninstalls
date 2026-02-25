-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_wpotweaks_show_activation_notice');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

