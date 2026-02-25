<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liquid_speech_balloon');
delete_site_option('liquid_speech_balloon');
delete_option('liquid_speech_balloon_img');
delete_site_option('liquid_speech_balloon_img');
delete_option('liquid_speech_balloon_name');
delete_site_option('liquid_speech_balloon_name');
delete_option('liquid_speech_balloon_note');
delete_site_option('liquid_speech_balloon_note');

// Delete Transients
delete_transient('liquid_admin_notices');
delete_site_transient('liquid_admin_notices');
delete_transient('liquid_admin_offer');
delete_site_transient('liquid_admin_offer');

