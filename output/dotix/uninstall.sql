-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dotix_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'dotix.%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dotix_hash', 'dotix');
DELETE FROM wp_usermeta WHERE meta_key IN ('dotix_hash', 'dotix');
DELETE FROM wp_termmeta WHERE meta_key IN ('dotix_hash', 'dotix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dotix_hash', 'dotix');

