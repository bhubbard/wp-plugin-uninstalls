-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idg_headline', 'idg_alternativeheadline', 'idg_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('idg_headline', 'idg_alternativeHeadline', 'idg_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('idg_headline', 'idg_alternativeHeadline', 'idg_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('idg_headline', 'idg_alternativeHeadline', 'idg_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('idg_headline', 'idg_alternativeHeadline', 'idg_description');

