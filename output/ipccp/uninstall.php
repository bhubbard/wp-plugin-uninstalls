<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ipccp_last_run_time_start');
delete_site_option('ipccp_last_run_time_start');
delete_option('ipccp_user_cron');
delete_site_option('ipccp_user_cron');
delete_option('ipccp_recluster');
delete_site_option('ipccp_recluster');
delete_option('ipccp_imagemap_min');
delete_site_option('ipccp_imagemap_min');
delete_option('ipccp_imagemap_max');
delete_site_option('ipccp_imagemap_max');
delete_option('ipccp_last_run_time_finish');
delete_site_option('ipccp_last_run_time_finish');
delete_option('ipccp_user_table_name');
delete_site_option('ipccp_user_table_name');
delete_option('ipccp_user_table_key');
delete_site_option('ipccp_user_table_key');
delete_option('ipccp_user_add_my_place');
delete_site_option('ipccp_user_add_my_place');
delete_option('ipccp_user_my_place_long');
delete_site_option('ipccp_user_my_place_long');
delete_option('ipccp_user_my_place_lat');
delete_site_option('ipccp_user_my_place_lat');
delete_option('ipccp_user_DS_MIN');
delete_site_option('ipccp_user_DS_MIN');
delete_option('ipccp_user_DS_MAX');
delete_site_option('ipccp_user_DS_MAX');
delete_option('ipccp_user_DS_STEPS');
delete_site_option('ipccp_user_DS_STEPS');
delete_option('ipccp_user_DS_LOW');
delete_site_option('ipccp_user_DS_LOW');
delete_option('ipccp_user_DS_HIGH');
delete_site_option('ipccp_user_DS_HIGH');
delete_option('ipccp_user_Border_Dot_Outer');
delete_site_option('ipccp_user_Border_Dot_Outer');
delete_option('ipccp_user_Color_Crosshair');
delete_site_option('ipccp_user_Color_Crosshair');
delete_option('ipccp_user_Color_Dot_Outer');
delete_site_option('ipccp_user_Color_Dot_Outer');
delete_option('ipccp_user_Color_Dot_InnerMax');
delete_site_option('ipccp_user_Color_Dot_InnerMax');
delete_option('ipccp_user_Color_Dot_InnerMin');
delete_site_option('ipccp_user_Color_Dot_InnerMin');
delete_option('ipccp_user_which_clustering');
delete_site_option('ipccp_user_which_clustering');
delete_option('ipccp_user_SCC');
delete_site_option('ipccp_user_SCC');
delete_option('ipccp_user_CDist');
delete_site_option('ipccp_user_CDist');
delete_option('ipccp_user_delay');
delete_site_option('ipccp_user_delay');
delete_option('ipccp_user_time_limit');
delete_site_option('ipccp_user_time_limit');
delete_option('ipccp_user_template_output');
delete_site_option('ipccp_user_template_output');
delete_option('ipccp_user_use_imagemap');
delete_site_option('ipccp_user_use_imagemap');
delete_option('ipccp_user_show_small_picture');
delete_site_option('ipccp_user_show_small_picture');
delete_option('ipccp_user_image_width_min');
delete_site_option('ipccp_user_image_width_min');
delete_option('ipccp_user_image_width_max');
delete_site_option('ipccp_user_image_width_max');
delete_option('ipccp_user_redraw_on_update');
delete_site_option('ipccp_user_redraw_on_update');
delete_option('ipccp_user_read_from_file');
delete_site_option('ipccp_user_read_from_file');
delete_option('ipccp_user_file_name');
delete_site_option('ipccp_user_file_name');
delete_option('ipccp_user_filter_includes');
delete_site_option('ipccp_user_filter_includes');
delete_option('ipccp_user_draw_legend');
delete_site_option('ipccp_user_draw_legend');
delete_option('ipccp_user_memory_efficient');
delete_site_option('ipccp_user_memory_efficient');
delete_option('ipccp_user_jpg_quality');
delete_site_option('ipccp_user_jpg_quality');
delete_option('ipccp_user_cluster_steps');
delete_site_option('ipccp_user_cluster_steps');
delete_option('ipccp_user_which_cluster_steps');
delete_site_option('ipccp_user_which_cluster_steps');
delete_option('ipccp_status');
delete_site_option('ipccp_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ipccp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

