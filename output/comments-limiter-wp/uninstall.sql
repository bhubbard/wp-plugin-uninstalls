-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doctorsoft_time_limit', 'doctorsoft_comment_limit');

