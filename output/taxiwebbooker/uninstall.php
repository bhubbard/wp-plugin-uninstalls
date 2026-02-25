<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('taxiweb_formid');
delete_site_option('taxiweb_formid');
delete_option('taxiweb_headercolor');
delete_site_option('taxiweb_headercolor');
delete_option('taxiweb_textcolor');
delete_site_option('taxiweb_textcolor');
delete_option('taxiweb_backgroundcolor');
delete_site_option('taxiweb_backgroundcolor');
delete_option('taxiweb_buttontextcolor');
delete_site_option('taxiweb_buttontextcolor');
delete_option('taxiweb_buttonbgcolor');
delete_site_option('taxiweb_buttonbgcolor');
delete_option('taxiweb_buttonstyle');
delete_site_option('taxiweb_buttonstyle');
delete_option('taxiweb_buttonposition');
delete_site_option('taxiweb_buttonposition');
delete_option('taxiweb_buttontext');
delete_site_option('taxiweb_buttontext');
delete_option('taxiweb_inline_buttontextcolor');
delete_site_option('taxiweb_inline_buttontextcolor');
delete_option('taxiweb_inline_buttonbgcolor');
delete_site_option('taxiweb_inline_buttonbgcolor');
delete_option('taxiweb_inline_buttonstyle');
delete_site_option('taxiweb_inline_buttonstyle');
delete_option('taxiweb_inline_buttonposition');
delete_site_option('taxiweb_inline_buttonposition');
delete_option('taxiweb_inline_buttontext');
delete_site_option('taxiweb_inline_buttontext');
delete_option('taxiweb_padding');
delete_site_option('taxiweb_padding');
delete_option('taxiweb_language');
delete_site_option('taxiweb_language');
delete_option('taxiweb_show_widget');
delete_site_option('taxiweb_show_widget');
delete_option('taxiweb_showTopbar');
delete_site_option('taxiweb_showTopbar');
delete_option('taxiweb_showLogo');
delete_site_option('taxiweb_showLogo');
delete_option('taxiweb_showbreadcrumbs');
delete_site_option('taxiweb_showbreadcrumbs');
delete_option('taxiweb_yda_continue_clicked');
delete_site_option('taxiweb_yda_continue_clicked');

