-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quasar_attr_img_q');
DELETE FROM wp_usermeta WHERE meta_key IN ('quasar_attr_img_q');
DELETE FROM wp_termmeta WHERE meta_key IN ('quasar_attr_img_q');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quasar_attr_img_q');

