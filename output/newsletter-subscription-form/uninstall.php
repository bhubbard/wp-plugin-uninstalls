<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weblizar_wnlsp_options');
delete_site_option('weblizar_wnlsp_options');
delete_option('weblizar_nls_options');
delete_site_option('weblizar_nls_options');
delete_option('weblizar_nls_mailchimp_key');
delete_site_option('weblizar_nls_mailchimp_key');
delete_option('weblizar_nls_madmimi_list');
delete_site_option('weblizar_nls_madmimi_list');
delete_option('nls_nht_plugin_do_activation_redirect');
delete_site_option('nls_nht_plugin_do_activation_redirect');
delete_option('weblizar_nls_mailchimp_list');
delete_site_option('weblizar_nls_mailchimp_list');

