<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('catablog-options');
delete_site_option('catablog-options');
delete_option('catablogcart_pageid');
delete_site_option('catablogcart_pageid');
delete_option('catablogcart_hideprices');
delete_site_option('catablogcart_hideprices');
delete_option('catablogcart_mpclientid');
delete_site_option('catablogcart_mpclientid');
delete_option('catablogcart_mpclientscrt');
delete_site_option('catablogcart_mpclientscrt');
delete_option('catablogcart_mpsandbox');
delete_site_option('catablogcart_mpsandbox');
delete_option('catablogcart_emailfrom');
delete_site_option('catablogcart_emailfrom');
delete_option('catablogcart_emailsubject');
delete_site_option('catablogcart_emailsubject');
delete_option('catablogcart_emailhtml');
delete_site_option('catablogcart_emailhtml');
delete_option('catablogcart_emailtemplate');
delete_site_option('catablogcart_emailtemplate');

