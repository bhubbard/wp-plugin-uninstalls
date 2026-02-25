<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('squelch_taas_jquery_ui_theme');
delete_site_option('squelch_taas_jquery_ui_theme');
delete_option('squelch_taas_vanity_url');
delete_site_option('squelch_taas_vanity_url');
delete_option('squelch_taas_disable_magic_url');
delete_site_option('squelch_taas_disable_magic_url');
delete_option('squelch_taas_custom_css_url');
delete_site_option('squelch_taas_custom_css_url');
delete_option('squelch_taas_v');
delete_site_option('squelch_taas_v');

