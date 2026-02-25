-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rbtc_enable_plugin', 'rbtc_enable_bold_color', 'rbtc_enable_heading_gradient', 'rbtc_enable_paragraph_color', 'rbtc_enable_dark_mode_style', 'rbtc_custom_gradient_colors', 'rbtc_max_colored_paragraphs', 'rbtc_enable_easter_egg', 'rbtc_easter_egg_unlocked');

