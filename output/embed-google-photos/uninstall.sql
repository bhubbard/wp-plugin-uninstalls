-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpgpb-google-photos', 'bpgpb_auth_info', 'bpgpb_expireTime');

