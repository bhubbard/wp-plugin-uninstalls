-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dfx_randomuserid_activation_show_activation_notice', 'dfx_randomuserid_first_user_moved_to');

