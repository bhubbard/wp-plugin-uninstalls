<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ItickerSID');
delete_site_option('ItickerSID');
delete_option('ItickerEnabled');
delete_site_option('ItickerEnabled');
delete_option('ItickerSid');
delete_site_option('ItickerSid');

