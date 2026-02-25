<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is-page-404tboc');
delete_site_option('is-page-404tboc');
delete_option('page-404tboc');
delete_site_option('page-404tboc');
delete_option('startText404tboc');
delete_site_option('startText404tboc');
delete_option('text-button-main404tboc');
delete_site_option('text-button-main404tboc');
delete_option('text-button-continue404tboc');
delete_site_option('text-button-continue404tboc');
delete_option('text-button-restart404tboc');
delete_site_option('text-button-restart404tboc');
delete_option('is-text-button-restart404tboc');
delete_site_option('is-text-button-restart404tboc');
delete_option('is-text-support404tboc');
delete_site_option('is-text-support404tboc');
delete_option('skin-404tboc');
delete_site_option('skin-404tboc');

