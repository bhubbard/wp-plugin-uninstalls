-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%-version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_page_generator_pro_group', '_page_generator_pro_index', '_wp_page_template', '_page_generator_pro_settings', '_page_generator_pro_last_index_generated', '_page_generator_pro_status', '_page_generator_pro_system', '_page_generator_pro_cancel');
DELETE FROM wp_usermeta WHERE meta_key IN ('_page_generator_pro_group', '_page_generator_pro_index', '_wp_page_template', '_page_generator_pro_settings', '_page_generator_pro_last_index_generated', '_page_generator_pro_status', '_page_generator_pro_system', '_page_generator_pro_cancel');
DELETE FROM wp_termmeta WHERE meta_key IN ('_page_generator_pro_group', '_page_generator_pro_index', '_wp_page_template', '_page_generator_pro_settings', '_page_generator_pro_last_index_generated', '_page_generator_pro_status', '_page_generator_pro_system', '_page_generator_pro_cancel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_page_generator_pro_group', '_page_generator_pro_index', '_wp_page_template', '_page_generator_pro_settings', '_page_generator_pro_last_index_generated', '_page_generator_pro_status', '_page_generator_pro_system', '_page_generator_pro_cancel');

