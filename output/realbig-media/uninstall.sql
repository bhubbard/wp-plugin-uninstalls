-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('token_value_input', 'token_value_send', 'rb_cacheClearAllow', 'rb_ampSettings', 'realbig_status_gatherer_version', 'realbig_status_gatherer', 'rb_TurboRssOptions', 'rfwp_selectiveOffField', 'rfwp_selectiveOffFieldRestore', 'wpseo_titles', 'rb_testMode', 'reboot_options', 'realbigForWP_version', 'gatherContentContainerLong');
DELETE FROM wp_options WHERE option_name LIKE 'related-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('template_meta', 'custom_template', '_yoast_wpseo_title', '_aioseop_title', 'ytremove_meta_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('template_meta', 'custom_template', '_yoast_wpseo_title', '_aioseop_title', 'ytremove_meta_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('template_meta', 'custom_template', '_yoast_wpseo_title', '_aioseop_title', 'ytremove_meta_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('template_meta', 'custom_template', '_yoast_wpseo_title', '_aioseop_title', 'ytremove_meta_value');

