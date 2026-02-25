-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_grv_sp_plugin_do_activation_redirect', 'wp_grv_sp_social_proofing_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_grv_sp_social_proofing_meta_box_btn', 'comment_extras');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_grv_sp_social_proofing_meta_box_btn', 'comment_extras');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_grv_sp_social_proofing_meta_box_btn', 'comment_extras');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_grv_sp_social_proofing_meta_box_btn', 'comment_extras');

