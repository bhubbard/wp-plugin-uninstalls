<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oba_dab_ex_admin');
delete_site_option('oba_dab_ex_admin');
delete_option('oba_dab_ex_editor');
delete_site_option('oba_dab_ex_editor');
delete_option('oba_dab_ex_author');
delete_site_option('oba_dab_ex_author');
delete_option('oba_dab_ex_con');
delete_site_option('oba_dab_ex_con');
delete_option('oba_dab_ex_sub');
delete_site_option('oba_dab_ex_sub');
delete_option('oba_dab_ex_any_logged');
delete_site_option('oba_dab_ex_any_logged');
delete_option('oba_dab_ex_any_visitor');
delete_site_option('oba_dab_ex_any_visitor');
delete_option('oba_dab_op_title');
delete_site_option('oba_dab_op_title');
delete_option('oba_dab_op_message');
delete_site_option('oba_dab_op_message');
delete_option('adab_cookie_name');
delete_site_option('adab_cookie_name');

