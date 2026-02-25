-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pinglunla_seo', 'pinglunla_exported_cid', 'pinglunla_cc0', 'pinglunla_cc1', 'pinglunla_sid');

