-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbllms_options', 'cbllms_generation_history', 'cbllms_logo_url', 'cbllms_generating');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_canonical_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_canonical_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_canonical_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_canonical_url');

