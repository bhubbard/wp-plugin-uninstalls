<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmc_TT_tweet');
delete_site_option('pmc_TT_tweet');
delete_option('pmc_TT_user');
delete_site_option('pmc_TT_user');
delete_option('pmc_TT_pass');
delete_site_option('pmc_TT_pass');

