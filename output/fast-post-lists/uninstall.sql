-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fu_fastpostlists_style', 'fu_fastpostlists_headhtml', 'fu_fastpostlists_posthtml', 'fu_fastpostlists_foothtml');

