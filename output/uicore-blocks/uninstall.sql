-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uicore_connect', 'uicore_blocks_recaptcha_site_key', 'uicore_blocks_googlemaps_api_key', 'uicore_theme_options', 'uicore_blocks_recaptcha_secret_key', 'uicore_blocks_mailchimp_secret_key', 'uicore_blocks_quick_actions', 'uiblocks_installed', 'uiblocks_version');
DELETE FROM wp_options WHERE option_name LIKE '_uicore_widget_block_styles_%';
DELETE FROM wp_options WHERE option_name LIKE '_uicore_widget_block_fonts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'page_description', 'description', '_uicore_block_assets', '_uicore_block_styles', '_uicore_block_critical_styles', '_uicore_block_styles_version', '_uicore_block_fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'page_description', 'description', '_uicore_block_assets', '_uicore_block_styles', '_uicore_block_critical_styles', '_uicore_block_styles_version', '_uicore_block_fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'page_description', 'description', '_uicore_block_assets', '_uicore_block_styles', '_uicore_block_critical_styles', '_uicore_block_styles_version', '_uicore_block_fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'page_description', 'description', '_uicore_block_assets', '_uicore_block_styles', '_uicore_block_critical_styles', '_uicore_block_styles_version', '_uicore_block_fonts');

