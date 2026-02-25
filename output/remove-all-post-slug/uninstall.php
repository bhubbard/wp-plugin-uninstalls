<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asoft_permalink_customtype_suffix');
delete_site_option('asoft_permalink_customtype_suffix');
delete_option('_transient_pll_languages_list');
delete_site_option('_transient_pll_languages_list');

