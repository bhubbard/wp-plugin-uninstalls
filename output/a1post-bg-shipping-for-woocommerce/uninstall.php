<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a1post_u');
delete_site_option('a1post_u');
delete_option('a1post_p');
delete_site_option('a1post_p');
delete_option('a1post_lbl');
delete_site_option('a1post_lbl');
delete_option('a1post_st');
delete_site_option('a1post_st');

