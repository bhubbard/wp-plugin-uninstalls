-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_item_data', '_date_format', '_custom_day_format', '_closed_dropdown_text', '_item_max', '_item_count', '_base_date', '_base_date_abs', '_base_date_rel', '_closed', '_closed_design', '_closed_text', '_closed_content', '_full', '_full_design', '_full_text', '_cp_tab');
DELETE FROM wp_usermeta WHERE meta_key IN ('_item_data', '_date_format', '_custom_day_format', '_closed_dropdown_text', '_item_max', '_item_count', '_base_date', '_base_date_abs', '_base_date_rel', '_closed', '_closed_design', '_closed_text', '_closed_content', '_full', '_full_design', '_full_text', '_cp_tab');
DELETE FROM wp_termmeta WHERE meta_key IN ('_item_data', '_date_format', '_custom_day_format', '_closed_dropdown_text', '_item_max', '_item_count', '_base_date', '_base_date_abs', '_base_date_rel', '_closed', '_closed_design', '_closed_text', '_closed_content', '_full', '_full_design', '_full_text', '_cp_tab');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_item_data', '_date_format', '_custom_day_format', '_closed_dropdown_text', '_item_max', '_item_count', '_base_date', '_base_date_abs', '_base_date_rel', '_closed', '_closed_design', '_closed_text', '_closed_content', '_full', '_full_design', '_full_text', '_cp_tab');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_day-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_day-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_day-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_day-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

