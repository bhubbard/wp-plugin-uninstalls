<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flowplayer_backgroundColor');
delete_site_option('flowplayer_backgroundColor');
delete_option('flowplayer_canvas');
delete_site_option('flowplayer_canvas');
delete_option('flowplayer_sliderColor');
delete_site_option('flowplayer_sliderColor');
delete_option('flowplayer_buttonColor');
delete_site_option('flowplayer_buttonColor');
delete_option('flowplayer_buttonOverColor');
delete_site_option('flowplayer_buttonOverColor');
delete_option('flowplayer_durationColor');
delete_site_option('flowplayer_durationColor');
delete_option('flowplayer_timeColor');
delete_site_option('flowplayer_timeColor');
delete_option('flowplayer_progressColor');
delete_site_option('flowplayer_progressColor');
delete_option('flowplayer_bufferColor');
delete_site_option('flowplayer_bufferColor');
delete_option('flowplayer_autobuffer');
delete_site_option('flowplayer_autobuffer');
delete_option('flowplayer_autoplay');
delete_site_option('flowplayer_autoplay');
delete_option('flowplayer_key');
delete_site_option('flowplayer_key');
delete_option('flowplayer_logo');
delete_site_option('flowplayer_logo');
delete_option('flowplayer_logolink');
delete_site_option('flowplayer_logolink');

