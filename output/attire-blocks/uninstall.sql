-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__atbs_disabled_assets', '__atbs_pro_license', 'attire_options', '__atbs_pro', '__wpdm_enc_key', '__atbs_last_check', '__atbs_rev', '__atbs_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_atbs_toc_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_atbs_toc_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_atbs_toc_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_atbs_toc_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_voting_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_voting_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_voting_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_voting_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_upvotes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_upvotes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_upvotes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_upvotes_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atbs_downvotes_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atbs_downvotes_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atbs_downvotes_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atbs_downvotes_%';

