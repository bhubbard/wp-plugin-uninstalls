-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post2pdf_conv_setting_opt', 'post2pdf_conv_exc', 'post2pdf_conv_sig', 'post2pdf_conv_updated', 'post2pdf_conv_checkver_stamp');

