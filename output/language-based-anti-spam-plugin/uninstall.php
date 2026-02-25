<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbcsc_blog_lang');
delete_site_option('lbcsc_blog_lang');
delete_option('lbcsc_alt_lang');
delete_site_option('lbcsc_alt_lang');

