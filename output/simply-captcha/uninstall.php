<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simplycap_key');
delete_site_option('simplycap_key');
delete_option('simplycap_website');
delete_site_option('simplycap_website');
delete_option('simplycap_commentform');
delete_site_option('simplycap_commentform');
delete_option('simplycap_hideregister');
delete_site_option('simplycap_hideregister');

