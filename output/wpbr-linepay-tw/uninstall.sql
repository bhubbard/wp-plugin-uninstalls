-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linepay_tw_payment_fail_order_status', 'linepay_tw_detail_status_note_enabled', 'linepay_tw_debug_log_enabled', 'linepay_tw_sandboxmode_enabled', 'linepay_tw_channel_id', 'linepay_tw_channel_secret', 'linepay_tw_sandbox_channel_id', 'linepay_tw_sandbox_channel_secret', 'woocommerce_linepay-tw_settings', 'linepay_tw_display_logo_enabled');

