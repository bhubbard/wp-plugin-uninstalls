<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arastoo_cpt_title');
delete_site_option('arastoo_cpt_title');
delete_option('arastoo_cpt_title_two');
delete_site_option('arastoo_cpt_title_two');
delete_option('arastoo_cpt_slug');
delete_site_option('arastoo_cpt_slug');
delete_option('arastoo_cpt_slug_two');
delete_site_option('arastoo_cpt_slug_two');

