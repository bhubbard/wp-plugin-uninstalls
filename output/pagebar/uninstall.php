<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Pagebar2_Postbar');
delete_site_option('Pagebar2_Postbar');
delete_option('Pagebar2_Multipagebar');
delete_site_option('Pagebar2_Multipagebar');
delete_option('pagebar2_commentbar');
delete_site_option('pagebar2_commentbar');
delete_option('commentbar');
delete_site_option('commentbar');
delete_option('postbar');
delete_site_option('postbar');
delete_option('multipagebar');
delete_site_option('multipagebar');
delete_option('pagebar2_postbar');
delete_site_option('pagebar2_postbar');

