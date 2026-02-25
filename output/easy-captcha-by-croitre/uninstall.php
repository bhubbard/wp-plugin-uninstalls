<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccs_easycap_app_secret');
delete_site_option('ccs_easycap_app_secret');
delete_option('ccs_easycap_tok_secret');
delete_site_option('ccs_easycap_tok_secret');
delete_option('ccs_easycap_ans_secret');
delete_site_option('ccs_easycap_ans_secret');
delete_option('ccs_easycap_math_ops');
delete_site_option('ccs_easycap_math_ops');

