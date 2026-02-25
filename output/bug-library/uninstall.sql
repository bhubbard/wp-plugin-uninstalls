-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BugLibraryGeneral');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bug-library-assignee', 'first_name', 'last_name', 'bug-library-product-version', 'bug-library-reporter-name', 'bug-library-reporter-email', 'bug-library-resolution-date', 'bug-library-resolution-version', 'bug-library-image-path', 'public_bug_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('bug-library-assignee', 'first_name', 'last_name', 'bug-library-product-version', 'bug-library-reporter-name', 'bug-library-reporter-email', 'bug-library-resolution-date', 'bug-library-resolution-version', 'bug-library-image-path', 'public_bug_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('bug-library-assignee', 'first_name', 'last_name', 'bug-library-product-version', 'bug-library-reporter-name', 'bug-library-reporter-email', 'bug-library-resolution-date', 'bug-library-resolution-version', 'bug-library-image-path', 'public_bug_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bug-library-assignee', 'first_name', 'last_name', 'bug-library-product-version', 'bug-library-reporter-name', 'bug-library-reporter-email', 'bug-library-resolution-date', 'bug-library-resolution-version', 'bug-library-image-path', 'public_bug_id');

