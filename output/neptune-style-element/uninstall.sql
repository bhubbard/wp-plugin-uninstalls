-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neptune_style_element_customize', 'neptune-style-element', 'Neptune_Style_Element_Customize');

