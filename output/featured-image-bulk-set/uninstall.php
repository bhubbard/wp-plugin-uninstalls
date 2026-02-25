<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fibs_automated');
delete_site_option('fibs_automated');
delete_option('fibs_dim');
delete_site_option('fibs_dim');
delete_option('fibs_override');
delete_site_option('fibs_override');
delete_option('fibs_firstlast');
delete_site_option('fibs_firstlast');
delete_option('fibs_drafts');
delete_site_option('fibs_drafts');

