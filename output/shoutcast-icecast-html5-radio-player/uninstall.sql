-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoutcast-icecast-html5-player-radiolink', 'shoutcast-icecast-html5-player-radiotype', 'shoutcast-icecast-html5-player-bcolor', 'shoutcast-icecast-html5-player-image', 'shoutcast-icecast-html5-player-facebook', 'shoutcast-icecast-html5-player-twitter', 'shoutcast-icecast-html5-player-title', 'shoutcast-icecast-html5-player-artist');

