-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sulock_temporarily_locked', 'sulock_permanently_locked', 'sulock_permlock_meta', 'sulock_templock_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('sulock_temporarily_locked', 'sulock_permanently_locked', 'sulock_permlock_meta', 'sulock_templock_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('sulock_temporarily_locked', 'sulock_permanently_locked', 'sulock_permlock_meta', 'sulock_templock_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sulock_temporarily_locked', 'sulock_permanently_locked', 'sulock_permlock_meta', 'sulock_templock_meta');

