-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themehunk_megamenu_options', 'themehunk_megamenu_settings', 'themehunk_megamenu_multisite_share_themes', 'themehunk_megamenu_themes_last_updated', 'themehunk_megamenu_themes');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themehunk_megamenu_item_megamenu_status', 'themehunk_megamenu_layout', 'themehunk_megamenu_builder_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('themehunk_megamenu_item_megamenu_status', 'themehunk_megamenu_layout', 'themehunk_megamenu_builder_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('themehunk_megamenu_item_megamenu_status', 'themehunk_megamenu_layout', 'themehunk_megamenu_builder_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themehunk_megamenu_item_megamenu_status', 'themehunk_megamenu_layout', 'themehunk_megamenu_builder_options');

