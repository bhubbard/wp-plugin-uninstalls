<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cb_popup_sub_popup_show');
delete_site_option('cb_popup_sub_popup_show');
delete_option('cb_popup_sub_cookie_expired');
delete_site_option('cb_popup_sub_cookie_expired');
delete_option('cb_popup_sub_logo');
delete_site_option('cb_popup_sub_logo');
delete_option('cb_popup_sub_first_text');
delete_site_option('cb_popup_sub_first_text');
delete_option('cb_popup_sub_second_text');
delete_site_option('cb_popup_sub_second_text');
delete_option('cb_popup_sub_footer_text');
delete_site_option('cb_popup_sub_footer_text');
delete_option('cb_popup_sub_footer_link_text');
delete_site_option('cb_popup_sub_footer_link_text');
delete_option('cb_popup_sub_footer_link_url');
delete_site_option('cb_popup_sub_footer_link_url');
delete_option('cb_popup_sub_popup_width');
delete_site_option('cb_popup_sub_popup_width');
delete_option('cb_popup_sub_submit_button');
delete_site_option('cb_popup_sub_submit_button');
delete_option('cb_popup_sub_no_thanks');
delete_site_option('cb_popup_sub_no_thanks');
delete_option('cb_popup_sub_form_action');
delete_site_option('cb_popup_sub_form_action');

