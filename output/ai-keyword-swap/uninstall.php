<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiks_keyword_swap_choices');
delete_site_option('aiks_keyword_swap_choices');
delete_option('aiks_keyword_swap_textfield_data');
delete_site_option('aiks_keyword_swap_textfield_data');
delete_option('aiks_keyword_swap_openai_endpoint_data');
delete_site_option('aiks_keyword_swap_openai_endpoint_data');

