<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uploadgenesislogo');
delete_site_option('uploadgenesislogo');
delete_option('floatgenesislogo');
delete_site_option('floatgenesislogo');
delete_option('centergenesislogo');
delete_site_option('centergenesislogo');
delete_option('widthgenesislogo');
delete_site_option('widthgenesislogo');
delete_option('heightgenesislogo');
delete_site_option('heightgenesislogo');

