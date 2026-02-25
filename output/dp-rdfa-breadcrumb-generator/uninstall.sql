-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dp_breadcrumb_showhome', 'dp_breadcrumb_showpost', 'dp_breadcrumb_showpage', 'dp_breadcrumb_showarchive', 'dp_breadcrumb_showtag', 'dp_breadcrumb_optseparator', 'dp_breadcrumb_opttext', 'dp_breadcrumb_opttexthome', 'dp_breadcrumb_opttitle', 'dp_breadcrumb_optlastchild', 'dp_breadcrumb_optmultiple', 'dp_breadcrumb_optremove');

