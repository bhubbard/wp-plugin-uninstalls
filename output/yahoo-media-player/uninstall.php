<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('location');
delete_site_option('location');
delete_option('version');
delete_site_option('version');
delete_option('amazon_id');
delete_site_option('amazon_id');
delete_option('auto_choice');
delete_site_option('auto_choice');
delete_option('autoplay');
delete_site_option('autoplay');
delete_option('autoadvance');
delete_site_option('autoadvance');
delete_option('playlink');
delete_site_option('playlink');
delete_option('displaystate');
delete_site_option('displaystate');
delete_option('volume');
delete_site_option('volume');
delete_option('default_album_art');
delete_site_option('default_album_art');
delete_option('parse');
delete_site_option('parse');
delete_option('termdetection');
delete_site_option('termdetection');
delete_option('youtube');
delete_site_option('youtube');
delete_option('skin');
delete_site_option('skin');
delete_option('choice');
delete_site_option('choice');

