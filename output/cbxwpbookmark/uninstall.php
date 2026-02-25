<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbxwpbookmark_version');
delete_site_option('cbxwpbookmark_version');
delete_option('cbxwpbookmark_basics');
delete_site_option('cbxwpbookmark_basics');
delete_option('cbxwpbookmark_customizer');
delete_site_option('cbxwpbookmark_customizer');

// Delete Transients
delete_transient('cbxwpbookmark_cat_addedit_error');
delete_site_transient('cbxwpbookmark_cat_addedit_error');
delete_transient('cbxwpbookmark_upgraded_notice');
delete_site_transient('cbxwpbookmark_upgraded_notice');
delete_transient('cbxwpbookmark_activated_notice');
delete_site_transient('cbxwpbookmark_activated_notice');
delete_transient('cbxwpbookmark_proaddon_deactivated');
delete_site_transient('cbxwpbookmark_proaddon_deactivated');
delete_transient('cbxwpbookmark_mycredaddon_deactivated');
delete_site_transient('cbxwpbookmark_mycredaddon_deactivated');

