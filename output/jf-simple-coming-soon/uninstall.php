<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jf_scs_delete_options');
delete_site_option('jf_scs_delete_options');
delete_option('jf_scs_enable');
delete_site_option('jf_scs_enable');
delete_option('jf_scs_content_field');
delete_site_option('jf_scs_content_field');
delete_option('jf_scs_use_custom_css');
delete_site_option('jf_scs_use_custom_css');
delete_option('jf_scs_custom_css_field');
delete_site_option('jf_scs_custom_css_field');
delete_option('jf_scs_title_field');
delete_site_option('jf_scs_title_field');
delete_option('jf_scs_bgcolor_field');
delete_site_option('jf_scs_bgcolor_field');
delete_option('jf_scs_textcolor_field');
delete_site_option('jf_scs_textcolor_field');
delete_option('jf_scs_topmargin_field');
delete_site_option('jf_scs_topmargin_field');

