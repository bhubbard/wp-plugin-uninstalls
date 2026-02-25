<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xoo-qv-button-text');
delete_site_option('xoo-qv-button-text');
delete_option('xoo-qv-button-fsize');
delete_site_option('xoo-qv-button-fsize');
delete_option('xoo-qv-button-position');
delete_site_option('xoo-qv-button-position');
delete_option('xoo-qv-btn-bgc');
delete_site_option('xoo-qv-btn-bgc');
delete_option('xoo-qv-button-color');
delete_site_option('xoo-qv-button-color');
delete_option('xoo-qv-btn-ps');
delete_site_option('xoo-qv-btn-ps');
delete_option('xoo-qv-btn-bs');
delete_site_option('xoo-qv-btn-bs');
delete_option('xoo-qv-btn-bc');
delete_site_option('xoo-qv-btn-bc');
delete_option('xoo-qv-btn-icon');
delete_site_option('xoo-qv-btn-icon');
delete_option('xoo-qv-btn-iconc');
delete_site_option('xoo-qv-btn-iconc');
delete_option('xoo-qv-gl-mobile');
delete_site_option('xoo-qv-gl-mobile');
delete_option('xoo-qv-gl-anim');
delete_site_option('xoo-qv-gl-anim');
delete_option('xoo-qv-gl-pbutton');
delete_site_option('xoo-qv-gl-pbutton');
delete_option('xoo-qv-gl-pbutton-text');
delete_site_option('xoo-qv-gl-pbutton-text');
delete_option('xoo-qv-lb-img-area');
delete_site_option('xoo-qv-lb-img-area');
delete_option('xoo-qv-lb-img-width');
delete_site_option('xoo-qv-lb-img-width');
delete_option('xoo-qv-lb-en-gallery');
delete_site_option('xoo-qv-lb-en-gallery');
delete_option('xoo-qv-lb-enable');
delete_site_option('xoo-qv-lb-enable');
delete_option('xoo-qv-lb-title');
delete_site_option('xoo-qv-lb-title');

