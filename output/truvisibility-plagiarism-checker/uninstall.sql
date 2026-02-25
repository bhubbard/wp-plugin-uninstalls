-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('truvisibility_plagiarism_usage', 'truvisibility_plagiarism_account');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('truvisibility_plagiarism_post_checked', 'truvisibility_plagiarism_post_uniqueness', 'truvisibility_plagiarism_publish_anyway');
DELETE FROM wp_usermeta WHERE meta_key IN ('truvisibility_plagiarism_post_checked', 'truvisibility_plagiarism_post_uniqueness', 'truvisibility_plagiarism_publish_anyway');
DELETE FROM wp_termmeta WHERE meta_key IN ('truvisibility_plagiarism_post_checked', 'truvisibility_plagiarism_post_uniqueness', 'truvisibility_plagiarism_publish_anyway');
DELETE FROM wp_commentmeta WHERE meta_key IN ('truvisibility_plagiarism_post_checked', 'truvisibility_plagiarism_post_uniqueness', 'truvisibility_plagiarism_publish_anyway');

