<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pilvi_emb_compare');
delete_site_option('pilvi_emb_compare');
delete_option('pilvi_emb_https');
delete_site_option('pilvi_emb_https');
delete_option('pilvi_emb_version');
delete_site_option('pilvi_emb_version');
delete_option('pilvi_emb_api_host');
delete_site_option('pilvi_emb_api_host');
delete_option('pilvi_emb_session_host');
delete_site_option('pilvi_emb_session_host');
delete_option('pilvi_emb_language');
delete_site_option('pilvi_emb_language');
delete_option('pilvi_emb_prices');
delete_site_option('pilvi_emb_prices');
delete_option('pilvi_embed_plugin_version');
delete_site_option('pilvi_embed_plugin_version');
delete_option('js_pilvi_emb_version');
delete_site_option('js_pilvi_emb_version');
delete_option('js_pilvi_emb_session_host');
delete_site_option('js_pilvi_emb_session_host');
delete_option('js_pilvi_emb_api_host');
delete_site_option('js_pilvi_emb_api_host');
delete_option('js_pilvi_emb_https');
delete_site_option('js_pilvi_emb_https');
delete_option('js_pilvi_emb_language');
delete_site_option('js_pilvi_emb_language');
delete_option('js_pilvi_emb_prices');
delete_site_option('js_pilvi_emb_prices');
delete_option('js_pilvi_emb_compare');
delete_site_option('js_pilvi_emb_compare');

