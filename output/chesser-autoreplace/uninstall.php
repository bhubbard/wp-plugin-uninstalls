<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chesser_autoreplace_active');
delete_site_option('chesser_autoreplace_active');
delete_option('chesser_autoreplace_rules');
delete_site_option('chesser_autoreplace_rules');
delete_option('chesser_autoreplace_use_mb');
delete_site_option('chesser_autoreplace_use_mb');

