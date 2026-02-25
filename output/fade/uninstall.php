<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alobaidi_fade_color');
delete_site_option('alobaidi_fade_color');
delete_option('alobaidi_fade_time');
delete_site_option('alobaidi_fade_time');
delete_option('alobaidi_fade_element');
delete_site_option('alobaidi_fade_element');

