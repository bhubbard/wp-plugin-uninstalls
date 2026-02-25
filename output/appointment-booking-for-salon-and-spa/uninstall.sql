-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blknt_widgetlink', 'blknt_widgetposition', 'blknt_buttoncolor');

