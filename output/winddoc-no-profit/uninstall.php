<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WDNP_WINDDOC_TOKEN');
delete_site_option('WDNP_WINDDOC_TOKEN');
delete_option('WDNP_WINDDOC_NUM_LIST');
delete_site_option('WDNP_WINDDOC_NUM_LIST');
delete_option('WDNP_WINDDOC_TIPO');
delete_site_option('WDNP_WINDDOC_TIPO');
delete_option('WDNP_WINDDOC_SHOW_NOME');
delete_site_option('WDNP_WINDDOC_SHOW_NOME');
delete_option('WDNP_WINDDOC_SHOW_COGNOME');
delete_site_option('WDNP_WINDDOC_SHOW_COGNOME');
delete_option('WDNP_WINDDOC_SHOW_CODICEFISCALE');
delete_site_option('WDNP_WINDDOC_SHOW_CODICEFISCALE');
delete_option('WDNP_WINDDOC_SHOW_NUMEROTESSERA');
delete_site_option('WDNP_WINDDOC_SHOW_NUMEROTESSERA');
delete_option('WDNP_WINDDOC_CARIA');
delete_site_option('WDNP_WINDDOC_CARIA');
delete_option('WDNP_WINDDOC_SHOW_DATA_NASCITA');
delete_site_option('WDNP_WINDDOC_SHOW_DATA_NASCITA');
delete_option('WDNP_WINDDOC_SHOW_TELEFONO');
delete_site_option('WDNP_WINDDOC_SHOW_TELEFONO');
delete_option('winddocnoprofit_db_version');
delete_site_option('winddocnoprofit_db_version');
delete_option('WD_WINDDOC_TOKEN');
delete_site_option('WD_WINDDOC_TOKEN');

