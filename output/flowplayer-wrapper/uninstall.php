<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpw_use_js');
delete_site_option('fpw_use_js');
delete_option('fpw_use_streaming');
delete_site_option('fpw_use_streaming');
delete_option('fpw_width');
delete_site_option('fpw_width');
delete_option('fpw_height');
delete_site_option('fpw_height');
delete_option('fpw_license');
delete_site_option('fpw_license');
delete_option('fpw_autoplay');
delete_site_option('fpw_autoplay');
delete_option('fpw_autobuffer');
delete_site_option('fpw_autobuffer');
delete_option('fpw_allowfs');
delete_site_option('fpw_allowfs');
delete_option('fpw_bgcolor');
delete_site_option('fpw_bgcolor');
delete_option('fpw_root_path');
delete_site_option('fpw_root_path');
delete_option('fpw_player');
delete_site_option('fpw_player');
delete_option('fpw_streaming');
delete_site_option('fpw_streaming');
delete_option('fpw_js');
delete_site_option('fpw_js');
delete_option('fpw_playpicpath');
delete_site_option('fpw_playpicpath');
delete_option('fpw_splash');
delete_site_option('fpw_splash');

