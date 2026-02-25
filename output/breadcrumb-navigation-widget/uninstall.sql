-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amr_breadcrumb_nostyle', 'amr_breadcrumb_nobackground_image');

