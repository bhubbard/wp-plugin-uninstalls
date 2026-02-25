-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polymer-options', 'widget_polymer_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('poly_autop', 'poly_template', 'poly_blocks', 'poly_iconsets', 'poly_javascript', 'poly_styles', 'poly_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('poly_autop', 'poly_template', 'poly_blocks', 'poly_iconsets', 'poly_javascript', 'poly_styles', 'poly_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('poly_autop', 'poly_template', 'poly_blocks', 'poly_iconsets', 'poly_javascript', 'poly_styles', 'poly_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('poly_autop', 'poly_template', 'poly_blocks', 'poly_iconsets', 'poly_javascript', 'poly_styles', 'poly_tags');

