<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liberachat_nick');
delete_site_option('liberachat_nick');
delete_option('liberachat_server');
delete_site_option('liberachat_server');
delete_option('liberachat_chan');
delete_site_option('liberachat_chan');
delete_option('liberachat_style');
delete_site_option('liberachat_style');
delete_option('liberachat_height');
delete_site_option('liberachat_height');
delete_option('liberachat_width');
delete_site_option('liberachat_width');

