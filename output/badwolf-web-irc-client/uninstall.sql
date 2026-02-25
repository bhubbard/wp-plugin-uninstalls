-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('web_irc_ws_url', 'web_irc_channel', 'web_irc_nickname_prefix', 'web_irc_realname', 'web_irc_theme', 'web_irc_autoconnect', 'web_irc_client_cache');

