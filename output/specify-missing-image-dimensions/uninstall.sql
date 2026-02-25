-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SMID_data_Src_Value', 'SMID_excluded_Image_Classes', 'SMID_excluded_Image_ID', 'SMID_excluded_Image_Name', 'SMID_excluded_Image_Extension');

