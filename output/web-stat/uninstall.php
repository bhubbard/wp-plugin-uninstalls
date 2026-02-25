<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wts_alias');
delete_site_option('wts_alias');
delete_option('wts_db');
delete_site_option('wts_db');
delete_option('wts_oc_a2');
delete_site_option('wts_oc_a2');
delete_option('wts_oc');
delete_site_option('wts_oc');
delete_option('wts_site_id');
delete_site_option('wts_site_id');
delete_option('wts_web_stat_uid');
delete_site_option('wts_web_stat_uid');

