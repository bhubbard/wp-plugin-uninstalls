<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pjm_graph_options');
delete_site_option('pjm_graph_options');
delete_option('pjm_graph_title');
delete_site_option('pjm_graph_title');
delete_option('pjm_graph_width');
delete_site_option('pjm_graph_width');
delete_option('pjm_graph_height');
delete_site_option('pjm_graph_height');
delete_option('pjm_graph_bgcolor');
delete_site_option('pjm_graph_bgcolor');
delete_option('pjm_graph_fgcolor');
delete_site_option('pjm_graph_fgcolor');
delete_option('pjm_graph_linecolor');
delete_site_option('pjm_graph_linecolor');
delete_option('pjm_graph_bglinecolor');
delete_site_option('pjm_graph_bglinecolor');
delete_option('pjm_graph_trendcolor');
delete_site_option('pjm_graph_trendcolor');
delete_option('pjm_graph_datefmt');
delete_site_option('pjm_graph_datefmt');

