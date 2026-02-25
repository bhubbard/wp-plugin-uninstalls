-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unopwa_active', 'unopwa_before_rewrite_text', 'unopwa_ips', 'unopwa_preview', 'unopwa_rewrite_text', 'unopwa_logout');

