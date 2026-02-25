-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hmd_options', 'hmd_opt_date', 'hmd_opt_modifieddate', 'hmd_opt_comments');

