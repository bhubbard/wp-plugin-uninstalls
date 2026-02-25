-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('axilweb_ajl_career_page', 'axilweb_ajl_job_post', 'axilweb_ajl_career_page_id');
DELETE FROM wp_options WHERE option_name LIKE '%career_page';
DELETE FROM wp_options WHERE option_name LIKE '%default_page_already_created';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', 'full_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', 'full_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', 'full_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', 'full_name');

