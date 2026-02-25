-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acm_options');
DELETE FROM wp_options WHERE option_name LIKE 'acm_validation_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('priority', 'operator', 'conditionals');
DELETE FROM wp_usermeta WHERE meta_key IN ('priority', 'operator', 'conditionals');
DELETE FROM wp_termmeta WHERE meta_key IN ('priority', 'operator', 'conditionals');
DELETE FROM wp_commentmeta WHERE meta_key IN ('priority', 'operator', 'conditionals');

