-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hits_6', 'hits_4', 'whois_url', 'ipv6detector_v4_msg', 'ipv6detector_v6_msg');

