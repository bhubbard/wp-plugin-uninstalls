-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ipt_content', 'wp_ipt_alternate', 'wp_ipt_nomark');

