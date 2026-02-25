-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdp_meta_control', 'sdp_is_dns_disable', 'sdp_prefetch_host_list');

