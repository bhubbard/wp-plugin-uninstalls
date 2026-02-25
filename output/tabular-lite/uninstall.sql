-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgo_tabular_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpgo_tabular_cpt_type', '_wpgo_tabular_template', '_wpgo_tabular_cpt_js', '_wpgo_tabular_cpt_image', '_wpgo_tabular_cpt_config_js', '_wpgo_tabular_cpt_css', '_wpgo_tabular_cpt_html', '_wpgo_tabular_cpt_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpgo_tabular_cpt_type', '_wpgo_tabular_template', '_wpgo_tabular_cpt_js', '_wpgo_tabular_cpt_image', '_wpgo_tabular_cpt_config_js', '_wpgo_tabular_cpt_css', '_wpgo_tabular_cpt_html', '_wpgo_tabular_cpt_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpgo_tabular_cpt_type', '_wpgo_tabular_template', '_wpgo_tabular_cpt_js', '_wpgo_tabular_cpt_image', '_wpgo_tabular_cpt_config_js', '_wpgo_tabular_cpt_css', '_wpgo_tabular_cpt_html', '_wpgo_tabular_cpt_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpgo_tabular_cpt_type', '_wpgo_tabular_template', '_wpgo_tabular_cpt_js', '_wpgo_tabular_cpt_image', '_wpgo_tabular_cpt_config_js', '_wpgo_tabular_cpt_css', '_wpgo_tabular_cpt_html', '_wpgo_tabular_cpt_data');

