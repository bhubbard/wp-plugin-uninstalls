-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bc_options', 'bc_twitch-dismiss', 'bcyt_companion_options', 'bckt_companion_options', 'bc_twitch_auth_token', 'bc_twitch_auth_token_expires');

