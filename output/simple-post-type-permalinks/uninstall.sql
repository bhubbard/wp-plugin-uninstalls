-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sptp_queue_flush_rewrite_rules', 'sptp_options');

