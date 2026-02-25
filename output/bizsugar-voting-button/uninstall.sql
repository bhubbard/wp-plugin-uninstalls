-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smbsugar_box_align', 'smbsugar_display_home', 'smbsugar_display_page', 'smbsugar_display_post', 'smbsugar_display_cat', 'smbsugar_display_archive', 'smbsugar_button');

