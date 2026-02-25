-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmc_mail_use_network_settings', 'wpmc_mail_message', 'wpmc_one_email', 'wpmc_one_use_network_settings', 'wpmc_two_use_network_settings', 'wpmc_three_use_network_settings', 'wpmc_five_use_network_settings', 'wpmc_six_use_network_settings');

