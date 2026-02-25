-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfb_flip_type_option', 'cfb-initial-save-version', 'cfb-install-date', 'Flip-Boxes-ratingDiv', 'Flip-Boxes-installDate', 'cfb-ratingDiv', 'Flip-Boxes-v', 'Flip-Boxes-type', 'CoolPlugins_blocks_widgets_css_file');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_CoolPlugins_gutenberg_block_stylesheet', '_CoolPlugins_gutenberg_block_fontawesome_libraray', '_CoolPlugins_gutenberg_block_fonts', '_coolPlugins_gutenberg_block_styles', '_CoolPlugins_gutenberg_block_styles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_CoolPlugins_gutenberg_block_stylesheet', '_CoolPlugins_gutenberg_block_fontawesome_libraray', '_CoolPlugins_gutenberg_block_fonts', '_coolPlugins_gutenberg_block_styles', '_CoolPlugins_gutenberg_block_styles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_CoolPlugins_gutenberg_block_stylesheet', '_CoolPlugins_gutenberg_block_fontawesome_libraray', '_CoolPlugins_gutenberg_block_fonts', '_coolPlugins_gutenberg_block_styles', '_CoolPlugins_gutenberg_block_styles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_CoolPlugins_gutenberg_block_stylesheet', '_CoolPlugins_gutenberg_block_fontawesome_libraray', '_CoolPlugins_gutenberg_block_fonts', '_coolPlugins_gutenberg_block_styles', '_CoolPlugins_gutenberg_block_styles');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%flip_layout';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%flip_layout';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%flip_layout';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%flip_layout';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%effect';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%bootstrap';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%bootstrap';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%bootstrap';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bootstrap';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%font';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%font';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%font';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%font';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%height';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%height';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%icon_size';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%icon_size';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%icon_size';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%icon_size';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%skin_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%skin_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%skin_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%skin_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%column';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%column';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%column';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%column';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%flip_repeat_group';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%flip_repeat_group';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%flip_repeat_group';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%flip_repeat_group';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%LinkTarget';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%LinkTarget';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%LinkTarget';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%LinkTarget';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%event';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%no_of_items';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%no_of_items';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%no_of_items';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%no_of_items';

