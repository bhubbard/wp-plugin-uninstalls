-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcrs_restrict_count', 'wcrs_restrict_count_notes', 'wcrs_hide_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcrs_restrict_count', 'wcrs_restrict_count_notes', 'wcrs_hide_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcrs_restrict_count', 'wcrs_restrict_count_notes', 'wcrs_hide_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcrs_restrict_count', 'wcrs_restrict_count_notes', 'wcrs_hide_count');

