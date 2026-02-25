<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yzahkin_post_grid_categories');
delete_site_option('yzahkin_post_grid_categories');
delete_option('yzahkin_post_grid_pagination_pn_text');
delete_site_option('yzahkin_post_grid_pagination_pn_text');
delete_option('yzahkin_post_grid_exlude_or_not');
delete_site_option('yzahkin_post_grid_exlude_or_not');

