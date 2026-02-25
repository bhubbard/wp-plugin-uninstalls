-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mf_sid', 'mf_redirect', 'mf_sms', 'mf_cname', 'mf_iphone');

