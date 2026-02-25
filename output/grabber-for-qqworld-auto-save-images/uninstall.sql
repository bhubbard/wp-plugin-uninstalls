-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qqworld-auto-save-images-exclude-domain', 'qqworld-auto-save-images-grabber');

