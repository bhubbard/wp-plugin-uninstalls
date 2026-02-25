<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pubexchange_publication_id');
delete_site_option('pubexchange_publication_id');
delete_option('pubexchange_widget_id');
delete_site_option('pubexchange_widget_id');
delete_option('pubexchange_widget_number');
delete_site_option('pubexchange_widget_number');
delete_option('pubexchange_link_discovery');
delete_site_option('pubexchange_link_discovery');
delete_option('pubexchange_lazy_load');
delete_site_option('pubexchange_lazy_load');

