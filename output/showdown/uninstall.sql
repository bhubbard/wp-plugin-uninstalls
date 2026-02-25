-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPShowdownOptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('points', 'lastIP', 'shown', 'link', 'won');
DELETE FROM wp_usermeta WHERE meta_key IN ('points', 'lastIP', 'shown', 'link', 'won');
DELETE FROM wp_termmeta WHERE meta_key IN ('points', 'lastIP', 'shown', 'link', 'won');
DELETE FROM wp_commentmeta WHERE meta_key IN ('points', 'lastIP', 'shown', 'link', 'won');

