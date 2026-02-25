-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maxbuttons_borderbox', 'maxbuttons_hidedescription', 'maxbuttons_autoresponsive', 'maxbuttons_autor_font', 'maxbuttons_autor_width', 'maxbuttons_pro_license_expires', 'maxbuttons_pro_license_activated', 'MBFREE_CREATED', 'MBFREE_HOMEURL', 'maxbuttons_protocol', 'maxbuttons_forcefa', 'maxbuttons_minify', 'maxbuttons_user_level', 'maxbuttons_noshowtinymce', 'maxbuttons_usecssfile', 'maxbuttons_pro_license_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('maxbuttons_review_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('maxbuttons_review_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('maxbuttons_review_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('maxbuttons_review_notice');

