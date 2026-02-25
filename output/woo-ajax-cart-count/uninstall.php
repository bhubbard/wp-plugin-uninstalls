<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imsAjaxCartCount_optionIcon');
delete_site_option('imsAjaxCartCount_optionIcon');
delete_option('imsAjaxCartCount_optionColor');
delete_site_option('imsAjaxCartCount_optionColor');
delete_option('imsAjaxCartCount_optionFontSize');
delete_site_option('imsAjaxCartCount_optionFontSize');

