-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai4seo_last_contact_form_submit_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', 'mfn-page-items-seo', '_fl_builder_data', '_et_pb_use_builder', 'ct_builder_shortcodes', 'brizy_post_uid', 'slim_seo', '_b2s_post_meta', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', 'mfn-page-items-seo', '_fl_builder_data', '_et_pb_use_builder', 'ct_builder_shortcodes', 'brizy_post_uid', 'slim_seo', '_b2s_post_meta', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', 'mfn-page-items-seo', '_fl_builder_data', '_et_pb_use_builder', 'ct_builder_shortcodes', 'brizy_post_uid', 'slim_seo', '_b2s_post_meta', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_elementor_data', 'mfn-page-items-seo', '_fl_builder_data', '_et_pb_use_builder', 'ct_builder_shortcodes', 'brizy_post_uid', 'slim_seo', '_b2s_post_meta', 'first_name');

