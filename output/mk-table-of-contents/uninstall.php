<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mk_toc_top_offset');
delete_site_option('mk_toc_top_offset');
delete_option('mk_toc_smooth');
delete_site_option('mk_toc_smooth');
delete_option('mk_toc_default_heading');
delete_site_option('mk_toc_default_heading');

