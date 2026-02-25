-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usermaven_server_token', 'usermaven_api_key', 'usermaven_cookie_less_tracking', 'usermaven_custom_domain', 'usermaven_autocapture', 'usermaven_form_tracking', 'usermaven_identify_verification', 'usermaven_embed_dashboard', 'usermaven_shared_link', 'usermaven_track_woocommerce', 'usermaven_role_administrator', 'usermaven_role_author', 'usermaven_role_contributor', 'usermaven_role_editor', 'usermaven_role_subscriber', 'usermaven_role_translator');
DELETE FROM wp_options WHERE option_name LIKE 'usermaven_role_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_usermaven_order_tracked', '_marketing_source', '_marketing_medium', '_marketing_campaign', '_failure_codes', '_retry_attempts', '_hold_reason', '_cancellation_reason', '_cancelled_by', '_refund_reason', '_refunded_by', 'billing_email', 'billing_country', 'shipping_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_usermaven_order_tracked', '_marketing_source', '_marketing_medium', '_marketing_campaign', '_failure_codes', '_retry_attempts', '_hold_reason', '_cancellation_reason', '_cancelled_by', '_refund_reason', '_refunded_by', 'billing_email', 'billing_country', 'shipping_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_usermaven_order_tracked', '_marketing_source', '_marketing_medium', '_marketing_campaign', '_failure_codes', '_retry_attempts', '_hold_reason', '_cancellation_reason', '_cancelled_by', '_refund_reason', '_refunded_by', 'billing_email', 'billing_country', 'shipping_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_usermaven_order_tracked', '_marketing_source', '_marketing_medium', '_marketing_campaign', '_failure_codes', '_retry_attempts', '_hold_reason', '_cancellation_reason', '_cancelled_by', '_refund_reason', '_refunded_by', 'billing_email', 'billing_country', 'shipping_country');

