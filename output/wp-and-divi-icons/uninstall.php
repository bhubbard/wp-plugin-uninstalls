<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agsdi_fa6_upgrade');
delete_site_option('agsdi_fa6_upgrade');
delete_option('agsdi-legacy-sets-loading');
delete_site_option('agsdi-legacy-sets-loading');
delete_option('agsdi_mc_packs');
delete_site_option('agsdi_mc_packs');
delete_option('ds-icon-expansion_first_activate');
delete_site_option('ds-icon-expansion_first_activate');
delete_option('ds-icon-expansion_notice_hidden');
delete_site_option('ds-icon-expansion_notice_hidden');
delete_option('agsdi_fo_icons');
delete_site_option('agsdi_fo_icons');
delete_option('agsdi_mc_icons');
delete_site_option('agsdi_mc_icons');
delete_option('agsdi_fa_icons');
delete_site_option('agsdi_fa_icons');
delete_option('agsdi_md_icons');
delete_site_option('agsdi_md_icons');
delete_option('agsdi_ui_icons');
delete_site_option('agsdi_ui_icons');
delete_option('agsdi_np_icons');
delete_site_option('agsdi_np_icons');
delete_option('agsdi_cs_icons');
delete_site_option('agsdi_cs_icons');
delete_option('agsdi_out_icons');
delete_site_option('agsdi_out_icons');
delete_option('agsdi_ske_icons');
delete_site_option('agsdi_ske_icons');
delete_option('agsdi_ele_icons');
delete_site_option('agsdi_ele_icons');
delete_option('agsdi_fil_icons');
delete_site_option('agsdi_fil_icons');
delete_option('agsdi_etl_icons');
delete_site_option('agsdi_etl_icons');
delete_option('agsdi_eth_icons');
delete_site_option('agsdi_eth_icons');
delete_option('agsdi_fa6_icons');
delete_site_option('agsdi_fa6_icons');
delete_option('agsdi-icon-expansion');
delete_site_option('agsdi-icon-expansion');
delete_option('agsdi_custom_last_modified_admin');
delete_site_option('agsdi_custom_last_modified_admin');
delete_option('agsdi_custom_last_modified');
delete_site_option('agsdi_custom_last_modified');
delete_option('agsdi_free_version');
delete_site_option('agsdi_free_version');
delete_option('aspengrove_icons_colors_slots');
delete_site_option('aspengrove_icons_colors_slots');

