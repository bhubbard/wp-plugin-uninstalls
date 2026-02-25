-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smntcs_ps_enable', 'smntcs_ps_background', 'smntcs_ps_message_color', 'smntcs_ps_message', 'smntcs_ps_login_button');

