-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7pp_show_earnings_notice', 'cf7pp_my_plugin_notice_shown', 'cf7pp_options', '_cf7pp_extensions_feed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_enable_stripe', '_cf7pp_name', '_cf7pp_price', '_cf7pp_id', '_cf7pp_gateway', '_cf7pp_stripe_email', 'transaction_id', 'amount', 'gateway', '_wp_trash_meta_status', 'payer_email', '_cf7pp_ppcp_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_enable_stripe', '_cf7pp_name', '_cf7pp_price', '_cf7pp_id', '_cf7pp_gateway', '_cf7pp_stripe_email', 'transaction_id', 'amount', 'gateway', '_wp_trash_meta_status', 'payer_email', '_cf7pp_ppcp_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_enable_stripe', '_cf7pp_name', '_cf7pp_price', '_cf7pp_id', '_cf7pp_gateway', '_cf7pp_stripe_email', 'transaction_id', 'amount', 'gateway', '_wp_trash_meta_status', 'payer_email', '_cf7pp_ppcp_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7pp_enable', '_cf7pp_enable_stripe', '_cf7pp_name', '_cf7pp_price', '_cf7pp_id', '_cf7pp_gateway', '_cf7pp_stripe_email', 'transaction_id', 'amount', 'gateway', '_wp_trash_meta_status', 'payer_email', '_cf7pp_ppcp_order_id');

