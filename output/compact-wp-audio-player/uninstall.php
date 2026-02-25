<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_audio_disable_simultaneous_play');
delete_site_option('sc_audio_disable_simultaneous_play');
delete_option('sc_audio_disable_url_validation');
delete_site_option('sc_audio_disable_url_validation');

