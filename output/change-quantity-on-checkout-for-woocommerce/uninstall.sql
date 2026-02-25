-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cqoc_enableBlock', 'cqoc_addDeleteIconBlock', 'cqoc_addQuantityField', 'cqoc_hideDeleteIcon', 'cqoc_classic_field_position', 'cqoc_classic_button_style', 'cqoc_classic_custom_css', 'cqoc_block_integration_method', 'cqoc_block_custom_attributes', 'cqoc_block_enable_ajax', 'cqoc_selectProductCategory');

