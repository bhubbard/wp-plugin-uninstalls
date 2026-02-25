<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pn_reg_email_on');
delete_site_option('pn_reg_email_on');
delete_option('pn_tpl_send');
delete_site_option('pn_tpl_send');
delete_option('pn_reg_user_on');
delete_site_option('pn_reg_user_on');
delete_option('pn_tpl_name');
delete_site_option('pn_tpl_name');
delete_option('pn_tpl_email');
delete_site_option('pn_tpl_email');
delete_option('pn_email_template');
delete_site_option('pn_email_template');
delete_option('pn_tpl_email_text');
delete_site_option('pn_tpl_email_text');
delete_option('pn_tpl_email_subject_text');
delete_site_option('pn_tpl_email_subject_text');
delete_option('pn_tpl_html');
delete_site_option('pn_tpl_html');
delete_option('pn_register_role');
delete_site_option('pn_register_role');

