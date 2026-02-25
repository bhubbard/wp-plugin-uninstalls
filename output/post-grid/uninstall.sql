-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_grid_notices', 'post_grid_license', 'post_grid_settings', 'post_grid_block_editor', 'post_grid_info', 'woocommerce_currency_pos', 'post_grid_layout_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_grid_meta_options', 'post_grid_post_settings', '_wp_attachment_image_alt', '_price', 'layout_options', 'layout_elements_data', 'custom_scripts', 'simple_job_board_company_name', 'simple_job_board_company_website', 'simple_job_board_company_tagline', '_job_expires', 'simple_job_board_company_logo', '_job_location', '_company_name', '_company_website', '_company_tagline');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_grid_meta_options', 'post_grid_post_settings', '_wp_attachment_image_alt', '_price', 'layout_options', 'layout_elements_data', 'custom_scripts', 'simple_job_board_company_name', 'simple_job_board_company_website', 'simple_job_board_company_tagline', '_job_expires', 'simple_job_board_company_logo', '_job_location', '_company_name', '_company_website', '_company_tagline');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_grid_meta_options', 'post_grid_post_settings', '_wp_attachment_image_alt', '_price', 'layout_options', 'layout_elements_data', 'custom_scripts', 'simple_job_board_company_name', 'simple_job_board_company_website', 'simple_job_board_company_tagline', '_job_expires', 'simple_job_board_company_logo', '_job_location', '_company_name', '_company_website', '_company_tagline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_grid_meta_options', 'post_grid_post_settings', '_wp_attachment_image_alt', '_price', 'layout_options', 'layout_elements_data', 'custom_scripts', 'simple_job_board_company_name', 'simple_job_board_company_website', 'simple_job_board_company_tagline', '_job_expires', 'simple_job_board_company_logo', '_job_location', '_company_name', '_company_website', '_company_tagline');

