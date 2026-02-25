<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dp_breadcrumb_showhome');
delete_site_option('dp_breadcrumb_showhome');
delete_option('dp_breadcrumb_showpost');
delete_site_option('dp_breadcrumb_showpost');
delete_option('dp_breadcrumb_showpage');
delete_site_option('dp_breadcrumb_showpage');
delete_option('dp_breadcrumb_showarchive');
delete_site_option('dp_breadcrumb_showarchive');
delete_option('dp_breadcrumb_showtag');
delete_site_option('dp_breadcrumb_showtag');
delete_option('dp_breadcrumb_optseparator');
delete_site_option('dp_breadcrumb_optseparator');
delete_option('dp_breadcrumb_opttext');
delete_site_option('dp_breadcrumb_opttext');
delete_option('dp_breadcrumb_opttexthome');
delete_site_option('dp_breadcrumb_opttexthome');
delete_option('dp_breadcrumb_opttitle');
delete_site_option('dp_breadcrumb_opttitle');
delete_option('dp_breadcrumb_optlastchild');
delete_site_option('dp_breadcrumb_optlastchild');
delete_option('dp_breadcrumb_optmultiple');
delete_site_option('dp_breadcrumb_optmultiple');
delete_option('dp_breadcrumb_optremove');
delete_site_option('dp_breadcrumb_optremove');

