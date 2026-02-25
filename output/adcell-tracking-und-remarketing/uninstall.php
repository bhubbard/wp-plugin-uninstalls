<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('roleWcAdcellProgramId');
delete_site_option('roleWcAdcellProgramId');
delete_option('roleWcAdcellEventId');
delete_site_option('roleWcAdcellEventId');
delete_option('roleWcAdcellRetargeting');
delete_site_option('roleWcAdcellRetargeting');

