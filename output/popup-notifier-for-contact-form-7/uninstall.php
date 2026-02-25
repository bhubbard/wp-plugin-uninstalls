<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popupnotifiercf7_option_isAutoClose');
delete_site_option('popupnotifiercf7_option_isAutoClose');
delete_option('popupnotifiercf7_option_isConfirmButton');
delete_site_option('popupnotifiercf7_option_isConfirmButton');
delete_option('popupnotifiercf7_option_isShowIcon');
delete_site_option('popupnotifiercf7_option_isShowIcon');
delete_option('popupnotifiercf7_option_customSeconds');
delete_site_option('popupnotifiercf7_option_customSeconds');
delete_option('popupnotifiercf7_option_customTextButton');
delete_site_option('popupnotifiercf7_option_customTextButton');
delete_option('popupnotifiercf7_option_customTextButtonBackground');
delete_site_option('popupnotifiercf7_option_customTextButtonBackground');

