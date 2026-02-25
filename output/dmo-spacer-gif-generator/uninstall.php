<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mll_lazyload_options_delay');
delete_site_option('mll_lazyload_options_delay');
delete_option('mll_lazyload_options_fade');
delete_site_option('mll_lazyload_options_fade');
delete_option('mll_lazyload_options_fade_duration');
delete_site_option('mll_lazyload_options_fade_duration');

