-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcv_label', 'wpcv_label_color', 'wpcv_label_voted', 'wpcv_label_color_voted', 'wpcv_pagetop', 'wpcv_pagebottom', 'wpcv_postonly');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcvotes', 'wpcvoters');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcvotes', 'wpcvoters');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcvotes', 'wpcvoters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcvotes', 'wpcvoters');

