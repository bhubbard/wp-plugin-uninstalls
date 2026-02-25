-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lhlnvnd_main_options', 'lhlnvnd_environment_options', 'lhlnvnd_email_options');

