-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('evcal_exlink', 'repeat_intervals', 'evcal_lmlink');
DELETE FROM wp_usermeta WHERE meta_key IN ('evcal_exlink', 'repeat_intervals', 'evcal_lmlink');
DELETE FROM wp_termmeta WHERE meta_key IN ('evcal_exlink', 'repeat_intervals', 'evcal_lmlink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('evcal_exlink', 'repeat_intervals', 'evcal_lmlink');

