-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_wcswr_shortcode_content', 'ced_wcswr_pages_already_have_occasional_content', 'ced_wcswr_latest_version', 'ced_wcswr_move_to_trash', 'ced_wcswr_occasional_content', 'ced_wcswr_occasional_contents');
DELETE FROM wp_options WHERE option_name LIKE '%_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_move_to';
DELETE FROM wp_options WHERE option_name LIKE '%_occasional_contents';
DELETE FROM wp_options WHERE option_name LIKE '%_pages_already_have_occasional_content';
DELETE FROM wp_options WHERE option_name LIKE '%_shortcode_content';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_to_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_to_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_to_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_to_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from_time';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_to_time';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_to_time';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_to_time';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_to_time';

