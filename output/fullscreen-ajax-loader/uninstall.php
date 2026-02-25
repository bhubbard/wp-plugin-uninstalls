<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_background_color');
delete_site_option('fs_background_color');
delete_option('fs_background_opacity');
delete_site_option('fs_background_opacity');
delete_option('fs_loader_scale');
delete_site_option('fs_loader_scale');
delete_option('fs_wc_compat');
delete_site_option('fs_wc_compat');
delete_option('fs_loader_img');
delete_site_option('fs_loader_img');
delete_option('fs_template');
delete_site_option('fs_template');
delete_option('fs_exclude_urls');
delete_site_option('fs_exclude_urls');
delete_option('fs_exclude_params');
delete_site_option('fs_exclude_params');

