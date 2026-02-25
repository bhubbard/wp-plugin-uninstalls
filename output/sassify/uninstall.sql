-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sassify', 'sassify_filemtimes', 'sassify_variables_signature');

