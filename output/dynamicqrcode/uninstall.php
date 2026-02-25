<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dynqr_btn_btn_bgcolor');
delete_site_option('dynqr_btn_btn_bgcolor');
delete_option('dynqr_btn_qr_size');
delete_site_option('dynqr_btn_qr_size');
delete_option('dynqr_btn_qr_color');
delete_site_option('dynqr_btn_qr_color');
delete_option('dynqr_btn_alt');
delete_site_option('dynqr_btn_alt');
delete_option('dynqr_btn_title');
delete_site_option('dynqr_btn_title');
delete_option('dynqr_emb_size');
delete_site_option('dynqr_emb_size');
delete_option('dynqr_emb_bgcolor');
delete_site_option('dynqr_emb_bgcolor');
delete_option('dynqr_emb_color');
delete_site_option('dynqr_emb_color');
delete_option('dynqr_emb_alt');
delete_site_option('dynqr_emb_alt');
delete_option('dynqr_emb_title');
delete_site_option('dynqr_emb_title');
delete_option('dynqr_emb_type');
delete_site_option('dynqr_emb_type');
delete_option('dynqr_emb_icon_url');
delete_site_option('dynqr_emb_icon_url');
delete_option('dynqr_btn_download');
delete_site_option('dynqr_btn_download');
delete_option('dynqr_admin_btn_download');
delete_site_option('dynqr_admin_btn_download');
delete_option('dynqr_emb_btn_download');
delete_site_option('dynqr_emb_btn_download');
delete_option('dynqr_admin_emb_btn_download');
delete_site_option('dynqr_admin_emb_btn_download');
delete_option('dynqr_display');
delete_site_option('dynqr_display');

// Delete Transients
delete_transient('dynqr_success');
delete_site_transient('dynqr_success');
delete_transient('dynqr_errors');
delete_site_transient('dynqr_errors');

