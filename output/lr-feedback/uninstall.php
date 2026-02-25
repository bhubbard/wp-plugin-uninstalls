<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lrf_feedbacktitle');
delete_site_option('lrf_feedbacktitle');
delete_option('lrf_formshortcode');
delete_site_option('lrf_formshortcode');
delete_option('lrf_formposition');
delete_site_option('lrf_formposition');

