<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lexiwbs_cod_restriction_enabled');
delete_site_option('lexiwbs_cod_restriction_enabled');
delete_option('lexiwbs_cod_min_total');
delete_site_option('lexiwbs_cod_min_total');
delete_option('lexiwbs_cod_max_total');
delete_site_option('lexiwbs_cod_max_total');

