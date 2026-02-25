<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mimf_slogan_show');
delete_site_option('mimf_slogan_show');
delete_option('mimf_msg_settings');
delete_site_option('mimf_msg_settings');
delete_option('mimf_settings');
delete_site_option('mimf_settings');
delete_option('mimf_hide_page');
delete_site_option('mimf_hide_page');
delete_option('mimf_hide_toolbar');
delete_site_option('mimf_hide_toolbar');
delete_option('mimf_particlejs');
delete_site_option('mimf_particlejs');
delete_option('mimf_conditional_script');
delete_site_option('mimf_conditional_script');

