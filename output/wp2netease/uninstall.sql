-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2neteaseuser', 'wp2neteasepass', 'wp2neteaseurl', 'netease_sdurl', 'netease_allowview', 'netease_msyn');

