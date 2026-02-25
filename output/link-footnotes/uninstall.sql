-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('link_footnotes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lf_on', 'lf_off');
DELETE FROM wp_usermeta WHERE meta_key IN ('lf_on', 'lf_off');
DELETE FROM wp_termmeta WHERE meta_key IN ('lf_on', 'lf_off');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lf_on', 'lf_off');

