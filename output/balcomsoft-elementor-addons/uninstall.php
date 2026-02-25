<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('bsoft_elementor_ad_banner_popup_dismissed');
delete_site_transient('bsoft_elementor_ad_banner_popup_dismissed');

