<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mobibuilderopeninnewtab');
delete_site_option('mobibuilderopeninnewtab');
delete_option('mobibuildershowborder');
delete_site_option('mobibuildershowborder');
delete_option('mobibuilderbordercolor');
delete_site_option('mobibuilderbordercolor');
delete_option('mobibuilderborderthickness');
delete_site_option('mobibuilderborderthickness');

