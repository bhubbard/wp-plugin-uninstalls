-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmr_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmr_input_type', 'wpmr_label_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmr_input_type', 'wpmr_label_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmr_input_type', 'wpmr_label_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmr_input_type', 'wpmr_label_key');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmr_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmr_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmr_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmr_%';

