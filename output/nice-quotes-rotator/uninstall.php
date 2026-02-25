<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nq_admin');
delete_site_option('nq_admin');
delete_option('nq_excerpts');
delete_site_option('nq_excerpts');
delete_option('nq_quotes');
delete_site_option('nq_quotes');
delete_option('nq_hello');
delete_site_option('nq_hello');
delete_option('nq_links');
delete_site_option('nq_links');
delete_option('nq_cats');
delete_site_option('nq_cats');
delete_option('nq_pluggable');
delete_site_option('nq_pluggable');
delete_option('nq_tag');
delete_site_option('nq_tag');

