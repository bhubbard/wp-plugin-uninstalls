-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disable_color_schemes', 'elementor_disable_typography_schemes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_wpda-builder-conditions', '_wpda-builder-container', '_wpda-builder-active', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_wpda-builder-conditions', '_wpda-builder-container', '_wpda-builder-active', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_wpda-builder-conditions', '_wpda-builder-container', '_wpda-builder-active', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_wpda-builder-conditions', '_wpda-builder-container', '_wpda-builder-active', '_wp_page_template');

