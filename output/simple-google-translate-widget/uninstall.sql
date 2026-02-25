-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_simple_google_translate', 'installredirect_do_activation_redirect', 'wp_sgt_WidgetTitle', 'wp_sgt_sctext_wlink');

