-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csf_demo_mode', 'webkima_elements');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('webkima_elements_cache_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('webkima_elements_cache_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('webkima_elements_cache_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('webkima_elements_cache_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'webkima_elements_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'webkima_elements_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'webkima_elements_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'webkima_elements_notice_%';

