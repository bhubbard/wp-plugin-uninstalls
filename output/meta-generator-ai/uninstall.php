<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mga_meta_gen_api_key');
delete_site_option('mga_meta_gen_api_key');
delete_option('mga_meta_gen_api_link');
delete_site_option('mga_meta_gen_api_link');
delete_option('mga_meta_gen_full_description');
delete_site_option('mga_meta_gen_full_description');
delete_option('mga_meta_gen_short_description');
delete_site_option('mga_meta_gen_short_description');
delete_option('mga_meta_gen_gpt_model_name');
delete_site_option('mga_meta_gen_gpt_model_name');
delete_option('mga_meta_gen_temperature');
delete_site_option('mga_meta_gen_temperature');

