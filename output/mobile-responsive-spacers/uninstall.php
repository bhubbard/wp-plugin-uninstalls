<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maz_mrs_breakpoint');
delete_site_option('maz_mrs_breakpoint');
delete_option('maz_mrs_ratio');
delete_site_option('maz_mrs_ratio');

