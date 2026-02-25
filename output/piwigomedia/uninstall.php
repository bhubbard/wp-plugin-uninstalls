<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('piwigomedia_images_per_page');
delete_site_option('piwigomedia_images_per_page');
delete_option('piwigomedia_piwigo_urls');
delete_site_option('piwigomedia_piwigo_urls');
delete_option('piwigomedia_piwigo_url');
delete_site_option('piwigomedia_piwigo_url');

