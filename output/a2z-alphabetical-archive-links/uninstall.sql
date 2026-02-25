-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a2zaal_post_types', 'rewrite_rules', 'a2zaal_processing_counts');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

