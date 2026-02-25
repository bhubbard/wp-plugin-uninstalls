-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgs_version', 'wpgs_version_upgraded_from', 'wpgs_remove_gallery_page', 'wpgs_update_language_options', 'wpgs_update_help_options', 'wpgs_doing_upgrade', 'wpgs_completed_upgrades', 'create_page', 'wpgs_wpgraphicstudio_install', '_wp_session_list', 'wpgs_wpgraphicstudio_logo_url', 'wpgs_wpgraphicstudio_nav_hex', 'wpgs_wpgraphicstudio_belcher_box_url', 'wpgs_wpgraphicstudio_buttons_url', 'wpgs_wpgraphicstudio_cta_boxes_url', 'wpgs_wpgraphicstudio_web_boxes_url', 'wpgs_wpgraphicstudio_headlines_url', 'wpgs_wpgraphicstudio_per_gallery', 'wpgs_wpgraphicstudio_per_members', 'wpgs_wpgraphicstudio_delete_files', 'wpgs_wpgraphicstudio_email_graphics', 'wpgs_wpgraphicstudio_remove_settings', 'rewrite_rules', '_wpgs_activation_redirect', 'wpgs_check_protection_files');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('EmailSent', 'ReSent');
DELETE FROM wp_usermeta WHERE meta_key IN ('EmailSent', 'ReSent');
DELETE FROM wp_termmeta WHERE meta_key IN ('EmailSent', 'ReSent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('EmailSent', 'ReSent');

