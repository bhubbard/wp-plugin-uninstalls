-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-bulk-post-status-support-types', 'wpbpus_remove_on_uninstall');

