<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pq_bordercolor');
delete_site_option('pq_bordercolor');
delete_option('pq_fontcolor');
delete_site_option('pq_fontcolor');
delete_option('pq_fontface');
delete_site_option('pq_fontface');
delete_option('pq_fontsize');
delete_site_option('pq_fontsize');

