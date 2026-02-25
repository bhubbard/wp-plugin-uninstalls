-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cvcs-taxonomy-enabled', 'cvcs-taxonomy-all-enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cv_term_status_draft');
DELETE FROM wp_usermeta WHERE meta_key IN ('cv_term_status_draft');
DELETE FROM wp_termmeta WHERE meta_key IN ('cv_term_status_draft');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cv_term_status_draft');

