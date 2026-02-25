<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('showQRUTLkampagnenSoftware');
delete_site_option('showQRUTLkampagnenSoftware');
delete_option('showQRURLkampagnenName');
delete_site_option('showQRURLkampagnenName');
delete_option('showQRURLkampagnenValue');
delete_site_option('showQRURLkampagnenValue');
delete_option('widget_showQRURL');
delete_site_option('widget_showQRURL');

