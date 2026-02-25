-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-coolca-branches', 'wc-coolca-price');
DELETE FROM wp_options WHERE option_name LIKE 'wc-coolca-branches-%';
DELETE FROM wp_options WHERE option_name LIKE 'wc-coolca-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcfmmp_profile_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcfmmp_profile_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcfmmp_profile_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcfmmp_profile_id');

