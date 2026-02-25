-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bprwg_activate_message', 'bprwg_approved_message', 'bprwg_denied_message', 'bprwg_admin_pending_message', 'bprwg_user_pending_message', 'bprwg_moderate', 'bprwg_privacy_network', 'bprwg_enable_notifications', 'bprwg_blocked_ips', 'bprwg_blocked_emails', 'bpro_user_count', 'bpro_total_user_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bprwg_ip_address', '_bprwg_is_moderated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bprwg_ip_address', '_bprwg_is_moderated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bprwg_ip_address', '_bprwg_is_moderated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bprwg_ip_address', '_bprwg_is_moderated');

