-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pf_json_resp', 'pf_payhip_username', 'pf_affiliate_id');

