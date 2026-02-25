-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipblock_enabled', 'ipblock_maxcount', 'ipblock_ips', 'ipblock_interval');

