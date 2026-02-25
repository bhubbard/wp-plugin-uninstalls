-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbm_credibility_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mbm_credibility_footnotes');
DELETE FROM wp_usermeta WHERE meta_key IN ('mbm_credibility_footnotes');
DELETE FROM wp_termmeta WHERE meta_key IN ('mbm_credibility_footnotes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mbm_credibility_footnotes');

