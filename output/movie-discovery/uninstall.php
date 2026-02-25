<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('md_aid');
delete_site_option('md_aid');
delete_option('md_lang');
delete_site_option('md_lang');

