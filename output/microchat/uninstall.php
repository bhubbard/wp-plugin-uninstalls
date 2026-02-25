<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('microchat_access_token');
delete_site_option('microchat_access_token');
delete_option('microchat_embed_widget_style');
delete_site_option('microchat_embed_widget_style');
delete_option('microchat_full_page_widget_style');
delete_site_option('microchat_full_page_widget_style');

