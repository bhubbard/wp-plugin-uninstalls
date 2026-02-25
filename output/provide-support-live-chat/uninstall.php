<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ProvideSupport plugin version');
delete_site_option('ProvideSupport plugin version');
delete_option('f7settings');
delete_site_option('f7settings');
delete_option('f7code');
delete_site_option('f7code');
delete_option('f7accountName');
delete_site_option('f7accountName');
delete_option('f7accountHash');
delete_site_option('f7accountHash');
delete_option('f7hiddencode');
delete_site_option('f7hiddencode');
delete_option('f7jsFile');
delete_site_option('f7jsFile');

