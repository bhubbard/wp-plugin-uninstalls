-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmwcptwd_cpt', 'mmwcptwd_tax', 'mmwcptwd_cwm', 'mmwcptwd', 'mmwcptwd_options', 'last_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cpt-taxonomy-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('cpt-taxonomy-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('cpt-taxonomy-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cpt-taxonomy-image');

