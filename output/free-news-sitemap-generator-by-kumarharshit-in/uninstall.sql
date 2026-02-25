-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('khnsg_flush_needed', 'khnsg_flush_rewrite_rules', 'khnsg_last_permalink_structure');

