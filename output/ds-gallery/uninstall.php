<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dsgal_showthumbs');
delete_site_option('dsgal_showthumbs');
delete_option('dsgal_transition');
delete_site_option('dsgal_transition');
delete_option('dsgal_width');
delete_site_option('dsgal_width');
delete_option('dsgal_height');
delete_site_option('dsgal_height');
delete_option('dsGalSlideMargin');
delete_site_option('dsGalSlideMargin');
delete_option('dsGalTransitionSpeed');
delete_site_option('dsGalTransitionSpeed');
delete_option('dsgal_showarrows');
delete_site_option('dsgal_showarrows');
delete_option('dsGalArrowImg');
delete_site_option('dsGalArrowImg');
delete_option('dsGalArrowW');
delete_site_option('dsGalArrowW');
delete_option('dsGalArrowH');
delete_site_option('dsGalArrowH');
delete_option('dsGalArrowTouch');
delete_site_option('dsGalArrowTouch');
delete_option('dsGalIncludejQuery');
delete_site_option('dsGalIncludejQuery');
delete_option('dsGalArrowKeys');
delete_site_option('dsGalArrowKeys');
delete_option('dsGalImgClick');
delete_site_option('dsGalImgClick');
delete_option('dsArrowChoice');
delete_site_option('dsArrowChoice');

