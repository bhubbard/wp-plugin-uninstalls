<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ead_height');
delete_site_option('ead_height');
delete_option('ead_width');
delete_site_option('ead_width');
delete_option('ead_download');
delete_site_option('ead_download');
delete_option('ead_text');
delete_site_option('ead_text');
delete_option('ead_provider');
delete_site_option('ead_provider');
delete_option('ead_mediainsert');
delete_site_option('ead_mediainsert');

