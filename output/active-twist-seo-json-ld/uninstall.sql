-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('at_seo_404_monitor_log');
DELETE FROM wp_options WHERE option_name LIKE '%index';
DELETE FROM wp_options WHERE option_name LIKE '%posts';
DELETE FROM wp_options WHERE option_name LIKE '%pages';
DELETE FROM wp_options WHERE option_name LIKE '%taxonomies';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('at_seo_job_title', 'at_seo_same_as');
DELETE FROM wp_usermeta WHERE meta_key IN ('at_seo_job_title', 'at_seo_same_as');
DELETE FROM wp_termmeta WHERE meta_key IN ('at_seo_job_title', 'at_seo_same_as');
DELETE FROM wp_commentmeta WHERE meta_key IN ('at_seo_job_title', 'at_seo_same_as');

