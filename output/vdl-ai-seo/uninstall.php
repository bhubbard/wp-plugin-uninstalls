<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vdl_ai_seo_last_status');
delete_site_option('vdl_ai_seo_last_status');
delete_option('vdl_ai_seo_status_snapshot');
delete_site_option('vdl_ai_seo_status_snapshot');

