<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('janolaw_user_id');
delete_site_option('janolaw_user_id');
delete_option('janolaw_shop_id');
delete_site_option('janolaw_shop_id');
delete_option('janolaw_cache_path');
delete_site_option('janolaw_cache_path');
delete_option('janolaw_cache_clear');
delete_site_option('janolaw_cache_clear');
delete_option('janolaw_language');
delete_site_option('janolaw_language');
delete_option('janolaw_language_default');
delete_site_option('janolaw_language_default');
delete_option('janolaw_agb_page');
delete_site_option('janolaw_agb_page');
delete_option('janolaw_imprint_page');
delete_site_option('janolaw_imprint_page');
delete_option('janolaw_widerruf_page');
delete_site_option('janolaw_widerruf_page');
delete_option('janolaw_widerrufform_page');
delete_site_option('janolaw_widerrufform_page');
delete_option('janolaw_privacy_page');
delete_site_option('janolaw_privacy_page');
delete_option('janolaw_agb_page_id');
delete_site_option('janolaw_agb_page_id');
delete_option('janolaw_imprint_page_id');
delete_site_option('janolaw_imprint_page_id');
delete_option('janolaw_widerruf_page_id');
delete_site_option('janolaw_widerruf_page_id');
delete_option('janolaw_widerrufform_page_id');
delete_site_option('janolaw_widerrufform_page_id');
delete_option('janolaw_privacy_page_id');
delete_site_option('janolaw_privacy_page_id');
delete_option('janolaw_version');
delete_site_option('janolaw_version');
delete_option('janolaw_pdf_top');
delete_site_option('janolaw_pdf_top');
delete_option('janolaw_pdf_bottom');
delete_site_option('janolaw_pdf_bottom');
delete_option('janolaw_woomail_order_widerruf');
delete_site_option('janolaw_woomail_order_widerruf');
delete_option('janolaw_woomail_order_agb');
delete_site_option('janolaw_woomail_order_agb');
delete_option('janolaw_woomail_order_widerrufform');
delete_site_option('janolaw_woomail_order_widerrufform');
delete_option('janolaw_woomail_order_datenschutz');
delete_site_option('janolaw_woomail_order_datenschutz');
delete_option('janolaw_plugin_version');
delete_site_option('janolaw_plugin_version');

