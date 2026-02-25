<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formdesignerHash');
delete_site_option('formdesignerHash');
delete_option('formdesignerCryptKey');
delete_site_option('formdesignerCryptKey');

