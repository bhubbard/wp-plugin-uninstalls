-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_extended_cpt_settings', 'wp_extended_tax_settings', 'wp_extended_meta_settings', 'wp_extended_post_id_for_meta', 'wp_extended_post_type', 'wp_extended_post_id_for_tax');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_extended_cpt_settings', 'wp_extended_tax_settings', 'wp_extended_meta_settings', 'wp_extended_post_id_for_meta', 'wp_extended_post_type', 'wp_extended_post_id_for_tax');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_extended_cpt_settings', 'wp_extended_tax_settings', 'wp_extended_meta_settings', 'wp_extended_post_id_for_meta', 'wp_extended_post_type', 'wp_extended_post_id_for_tax');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_extended_cpt_settings', 'wp_extended_tax_settings', 'wp_extended_meta_settings', 'wp_extended_post_id_for_meta', 'wp_extended_post_type', 'wp_extended_post_id_for_tax');

