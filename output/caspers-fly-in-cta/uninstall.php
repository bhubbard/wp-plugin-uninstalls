<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpcta-enabled');
delete_site_option('cpcta-enabled');
delete_option('cpcta-display-on');
delete_site_option('cpcta-display-on');
delete_option('cpcta-display-page');
delete_site_option('cpcta-display-page');
delete_option('cpcta-display-post');
delete_site_option('cpcta-display-post');
delete_option('cpcta-slider-type');
delete_site_option('cpcta-slider-type');
delete_option('cpcta-hori-slider-position');
delete_site_option('cpcta-hori-slider-position');
delete_option('cpcta-zindex');
delete_site_option('cpcta-zindex');
delete_option('cpcta-enable-autopop');
delete_site_option('cpcta-enable-autopop');
delete_option('cpcta-autopop-timer');
delete_site_option('cpcta-autopop-timer');
delete_option('cpcta-top-bar-text');
delete_site_option('cpcta-top-bar-text');
delete_option('cpcta-slider-body-content');
delete_site_option('cpcta-slider-body-content');
delete_option('cpcta-width-percent');
delete_site_option('cpcta-width-percent');
delete_option('cpcta-vert-slider-position');
delete_site_option('cpcta-vert-slider-position');
delete_option('cpcta-top-bar-font-color');
delete_site_option('cpcta-top-bar-font-color');
delete_option('cpcta-top-bar-bkg-color');
delete_site_option('cpcta-top-bar-bkg-color');
delete_option('cpcta-body-content-font-color');
delete_site_option('cpcta-body-content-font-color');
delete_option('cpcta-body-content-bkg-color');
delete_site_option('cpcta-body-content-bkg-color');
delete_option('cpcta-mobile-hidden');
delete_site_option('cpcta-mobile-hidden');
delete_option('cpcta-mobile-width');
delete_site_option('cpcta-mobile-width');
delete_option('cpcta-hori-slider-topbar-angle');
delete_site_option('cpcta-hori-slider-topbar-angle');
delete_option('cpcta-width-pixel');
delete_site_option('cpcta-width-pixel');
delete_option('cpcta-close-btn-color');
delete_site_option('cpcta-close-btn-color');

