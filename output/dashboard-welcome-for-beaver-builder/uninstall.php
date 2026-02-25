<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpd_hide_from_subsite');
delete_site_option('bbpd_hide_from_subsite');
delete_option('bbpd_template');
delete_site_option('bbpd_template');
delete_option('bbpd_template_dismissible');
delete_site_option('bbpd_template_dismissible');
delete_option('bbpd_template_site');
delete_site_option('bbpd_template_site');

