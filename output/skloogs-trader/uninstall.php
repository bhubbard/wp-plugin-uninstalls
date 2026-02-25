<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SkMenuMode');
delete_site_option('SkMenuMode');
delete_option('SkTRDefWidth');
delete_site_option('SkTRDefWidth');
delete_option('SkTRDefHeight');
delete_site_option('SkTRDefHeight');
delete_option('SkTRBgColor');
delete_site_option('SkTRBgColor');
delete_option('SkTRTxtColor');
delete_site_option('SkTRTxtColor');
delete_option('SkTRBdColor');
delete_site_option('SkTRBdColor');
delete_option('SkTRFilColor');
delete_site_option('SkTRFilColor');
delete_option('SkTRShVolume');
delete_site_option('SkTRShVolume');
delete_option('SkTRChType');
delete_site_option('SkTRChType');
delete_option('SkTRDefPeriod');
delete_site_option('SkTRDefPeriod');
delete_option('SkTRDefMarket');
delete_site_option('SkTRDefMarket');
delete_option('SkTRStatic');
delete_site_option('SkTRStatic');

