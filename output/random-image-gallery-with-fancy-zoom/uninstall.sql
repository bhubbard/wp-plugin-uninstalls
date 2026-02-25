-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rigwfz_title', 'rigwfz_width', 'rigwfz_dir', 'rigwfz_title_yes');

