-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pra_author_review', 'pra_author_review_ver', 'pro_author_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_par_post_review_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_par_post_review_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_par_post_review_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_par_post_review_data');

