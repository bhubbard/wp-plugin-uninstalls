<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shoutcast-icecast-html5-player-radiolink');
delete_site_option('shoutcast-icecast-html5-player-radiolink');
delete_option('shoutcast-icecast-html5-player-radiotype');
delete_site_option('shoutcast-icecast-html5-player-radiotype');
delete_option('shoutcast-icecast-html5-player-bcolor');
delete_site_option('shoutcast-icecast-html5-player-bcolor');
delete_option('shoutcast-icecast-html5-player-image');
delete_site_option('shoutcast-icecast-html5-player-image');
delete_option('shoutcast-icecast-html5-player-facebook');
delete_site_option('shoutcast-icecast-html5-player-facebook');
delete_option('shoutcast-icecast-html5-player-twitter');
delete_site_option('shoutcast-icecast-html5-player-twitter');
delete_option('shoutcast-icecast-html5-player-title');
delete_site_option('shoutcast-icecast-html5-player-title');
delete_option('shoutcast-icecast-html5-player-artist');
delete_site_option('shoutcast-icecast-html5-player-artist');

