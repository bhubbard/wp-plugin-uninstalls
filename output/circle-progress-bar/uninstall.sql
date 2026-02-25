-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('circle_progress_first_stoke_color', 'circle_progress_second_stoke_color');
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_circle_percentage_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_circle_percentage_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_circle_percentage_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_circle_percentage_key');

