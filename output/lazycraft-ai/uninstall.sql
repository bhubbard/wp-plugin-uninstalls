-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lazyaico_db_v');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lazyaico_status', 'lazyaico_reviewers', 'lazyaico_comments');
DELETE FROM wp_usermeta WHERE meta_key IN ('lazyaico_status', 'lazyaico_reviewers', 'lazyaico_comments');
DELETE FROM wp_termmeta WHERE meta_key IN ('lazyaico_status', 'lazyaico_reviewers', 'lazyaico_comments');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lazyaico_status', 'lazyaico_reviewers', 'lazyaico_comments');

