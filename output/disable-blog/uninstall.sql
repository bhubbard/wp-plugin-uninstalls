-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dwpb_version', 'dwpb_previous_version', 'wc_count_comments');

