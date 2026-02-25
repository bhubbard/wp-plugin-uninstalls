-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BotBanish_do_activation_redirect', 'botbanishfirewall_client_option_name');

