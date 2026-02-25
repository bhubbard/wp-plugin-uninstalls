-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwcufr_spare_me', 'rwcufr_a08n_time', 'rwcufr_generals');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rwcufr_author_status', 'rwcufr_status_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('rwcufr_author_status', 'rwcufr_status_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('rwcufr_author_status', 'rwcufr_status_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rwcufr_author_status', 'rwcufr_status_date');

