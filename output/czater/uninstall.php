<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CzaterId');
delete_site_option('CzaterId');
delete_option('czaterAutoCompliteLogin');
delete_site_option('czaterAutoCompliteLogin');
delete_option('czaterAutoCompliteEmail');
delete_site_option('czaterAutoCompliteEmail');
delete_option('css_template');
delete_site_option('css_template');
delete_option('czaterCode');
delete_site_option('czaterCode');

