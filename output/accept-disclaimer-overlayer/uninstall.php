<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mind_disclaimer_sidewide');
delete_site_option('mind_disclaimer_sidewide');
delete_option('mind_disclaimer_text');
delete_site_option('mind_disclaimer_text');
delete_option('mind_disclaimer_title');
delete_site_option('mind_disclaimer_title');
delete_option('mind_accept_text');
delete_site_option('mind_accept_text');
delete_option('mind_disclaimer_show_once');
delete_site_option('mind_disclaimer_show_once');

