<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjpf_activate');
delete_site_option('wpjpf_activate');
delete_option('wpjpf_transition_color');
delete_site_option('wpjpf_transition_color');
delete_option('wpjpf_transition_activate');
delete_site_option('wpjpf_transition_activate');
delete_option('wpjpf_transition');
delete_site_option('wpjpf_transition');
delete_option('wpjpf_loader_activate');
delete_site_option('wpjpf_loader_activate');
delete_option('wpjpf_loader');
delete_site_option('wpjpf_loader');
delete_option('wpjpf_loader_color');
delete_site_option('wpjpf_loader_color');

