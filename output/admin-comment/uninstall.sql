-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PF_COMMENTS_OK', 'PF_COMMENTS_COLOR');

