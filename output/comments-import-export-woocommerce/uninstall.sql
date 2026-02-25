-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmt_ex_im_option', 'wcie_wt_plugin_reviewed', 'wbte_sc_hidden_promotion_banners', 'hw_shipment_tracking_importer_ftp', 'wt_post_comment_alter_id', 'hw_prod_comment_csv_imp_exp_mapping', 'hw_prod_cmt_csv_imp_exp_mapping');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating');

