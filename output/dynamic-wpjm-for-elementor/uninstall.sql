-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynawpel_elementor_preview_active', 'dynawpel_elementor_dynamic_tags_active', 'elementor_cpt_support', 'dynawpel_elementor_conditions_active', 'job_manager_currency', 'dynawpel_thousands_separator', 'dynawpel_decimal_separator', 'dynawpel_elementor_reload_hooks', 'dynawpel_elementor_activated', 'dynawpel_elementor_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data%dynawpel_elementor%', '_company_name', '_company_tagline', '_company_video', '_company_website', '_application', '_job_expires', '_featured', '_filled', '_job_location', '_job_salary', '_job_salary_currency', '_remote_position', 'dynawpel_elementor_%');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data%dynawpel_elementor%', '_company_name', '_company_tagline', '_company_video', '_company_website', '_application', '_job_expires', '_featured', '_filled', '_job_location', '_job_salary', '_job_salary_currency', '_remote_position', 'dynawpel_elementor_%');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data%dynawpel_elementor%', '_company_name', '_company_tagline', '_company_video', '_company_website', '_application', '_job_expires', '_featured', '_filled', '_job_location', '_job_salary', '_job_salary_currency', '_remote_position', 'dynawpel_elementor_%');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data%dynawpel_elementor%', '_company_name', '_company_tagline', '_company_video', '_company_website', '_application', '_job_expires', '_featured', '_filled', '_job_location', '_job_salary', '_job_salary_currency', '_remote_position', 'dynawpel_elementor_%');

