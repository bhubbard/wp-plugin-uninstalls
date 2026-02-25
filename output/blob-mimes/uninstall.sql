-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bm_contributor_notice', 'bm_remote_contributors', 'lotf_cleanup');

