<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ag_login');
delete_site_option('ag_login');
delete_option('ag_register');
delete_site_option('ag_register');
delete_option('ag_fail');
delete_site_option('ag_fail');
delete_option('ag_remember');
delete_site_option('ag_remember');
delete_option('ag_termm');
delete_site_option('ag_termm');
delete_option('ag_url');
delete_site_option('ag_url');
delete_option('ag_comments');
delete_site_option('ag_comments');
delete_option('ag_lightbox');
delete_site_option('ag_lightbox');
delete_option('ag_colors');
delete_site_option('ag_colors');
delete_option('bp-pages');
delete_site_option('bp-pages');

