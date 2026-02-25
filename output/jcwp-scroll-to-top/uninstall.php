<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgstp_active');
delete_site_option('jcorgstp_active');
delete_option('jcorgstp_duration');
delete_site_option('jcorgstp_duration');
delete_option('jcorgstp_scroleActivateAt');
delete_site_option('jcorgstp_scroleActivateAt');
delete_option('jcorgstp_scrollElementId');
delete_site_option('jcorgstp_scrollElementId');
delete_option('jcorgstp_easingType');
delete_site_option('jcorgstp_easingType');
delete_option('jcorgstp_position');
delete_site_option('jcorgstp_position');
delete_option('jcorgstp_scrollText');
delete_site_option('jcorgstp_scrollText');
delete_option('jcorgstp_backgroundColor');
delete_site_option('jcorgstp_backgroundColor');
delete_option('jcorgstp_foreColor');
delete_site_option('jcorgstp_foreColor');
delete_option('jcorgstp_fontFamily');
delete_site_option('jcorgstp_fontFamily');
delete_option('jcorgstp_fontSize');
delete_site_option('jcorgstp_fontSize');
delete_option('jcorgstp_fontWeight');
delete_site_option('jcorgstp_fontWeight');
delete_option('jcorgstp_textPadding');
delete_site_option('jcorgstp_textPadding');
delete_option('jcorgstp_zindex');
delete_site_option('jcorgstp_zindex');
delete_option('jcorgstp_containerWidth');
delete_site_option('jcorgstp_containerWidth');
delete_option('jcorgstp_containerBorder');
delete_site_option('jcorgstp_containerBorder');
delete_option('jcorgstp_borderRadius');
delete_site_option('jcorgstp_borderRadius');
delete_option('jcorgstp_disableon_tablet');
delete_site_option('jcorgstp_disableon_tablet');
delete_option('jcorgstp_disableon_mobile');
delete_site_option('jcorgstp_disableon_mobile');
delete_option('jcorgstp_callback');
delete_site_option('jcorgstp_callback');
delete_option('jcorgstp_linkback');
delete_site_option('jcorgstp_linkback');
delete_option('jcorgstp_linkback_text');
delete_site_option('jcorgstp_linkback_text');

