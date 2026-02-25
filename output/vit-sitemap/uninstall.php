<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vitsitemap_new_tab_opening');
delete_site_option('vitsitemap_new_tab_opening');
delete_option('vitsitemap_exclude_ids');
delete_site_option('vitsitemap_exclude_ids');

