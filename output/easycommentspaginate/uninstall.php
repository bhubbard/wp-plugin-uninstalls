<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easycommentspaginate_paginateContainer');
delete_site_option('easycommentspaginate_paginateContainer');
delete_option('easycommentspaginate_paginateElement');
delete_site_option('easycommentspaginate_paginateElement');
delete_option('easycommentspaginate_hashPage');
delete_site_option('easycommentspaginate_hashPage');
delete_option('easycommentspaginate_elementsPerPage');
delete_site_option('easycommentspaginate_elementsPerPage');
delete_option('easycommentspaginate_effect');
delete_site_option('easycommentspaginate_effect');
delete_option('easycommentspaginate_slideOffset');
delete_site_option('easycommentspaginate_slideOffset');
delete_option('easycommentspaginate_firstButton');
delete_site_option('easycommentspaginate_firstButton');
delete_option('easycommentspaginate_firstButtonText');
delete_site_option('easycommentspaginate_firstButtonText');
delete_option('easycommentspaginate_lastButton');
delete_site_option('easycommentspaginate_lastButton');
delete_option('easycommentspaginate_lastButtonText');
delete_site_option('easycommentspaginate_lastButtonText');
delete_option('easycommentspaginate_prevButton');
delete_site_option('easycommentspaginate_prevButton');
delete_option('easycommentspaginate_prevButtonText');
delete_site_option('easycommentspaginate_prevButtonText');
delete_option('easycommentspaginate_nextButton');
delete_site_option('easycommentspaginate_nextButton');
delete_option('easycommentspaginate_nextButtonText');
delete_site_option('easycommentspaginate_nextButtonText');
delete_option('easycommentspaginate_custom_css');
delete_site_option('easycommentspaginate_custom_css');
delete_option('easycommentspaginate_test_mode');
delete_site_option('easycommentspaginate_test_mode');
delete_option('easycommentspaginate_class');
delete_site_option('easycommentspaginate_class');

