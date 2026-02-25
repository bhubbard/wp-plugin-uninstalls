-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('darkify', 'classic-editor-replace', 'darkify_version', 'darkify_first_version', 'darkify_activation_date', 'darkify_db_version', 'darkify_review_notice_dismiss', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_darkify_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_darkify_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_darkify_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_darkify_errors_%';

