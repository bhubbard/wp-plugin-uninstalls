-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nvtrag_wp_schema_ver', 'nvtrag_setup_done', 'nvtrag_saas_settings', 'nvtrag_wp_activation_redirect', 'nvtrag_pending_api_key_fill', 'nvtrag_whoami_cache', 'nvtrag_unread_sess_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_phone');

