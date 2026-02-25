-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickdocs_flush_rewrite_rules', 'qds_home_title', 'qds_home_content', 'qds_font_family', 'qds_background_image', 'qds_accent_colour', 'qds_home_show_topics');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quickdocs_state');
DELETE FROM wp_usermeta WHERE meta_key IN ('quickdocs_state');
DELETE FROM wp_termmeta WHERE meta_key IN ('quickdocs_state');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quickdocs_state');

