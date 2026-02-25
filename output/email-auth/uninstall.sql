-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eauth_spf_server_ip', 'eauth_spf_server_ip_custom', 'eauth_from_address_force', 'eauth_from_address_name', 'eauth_reply_to', 'eauth_reply_to_name', 'eauth_dkim_selector', 'eauth_bounce_address_mode', 'eauth_dkim_domain_custom', 'eauth_from_address', 'eauth_bounce_address', 'eauth_dkim_domain', 'eauth_org_domain_map');

