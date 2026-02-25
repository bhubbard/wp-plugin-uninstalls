-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onix_meta_box_cpt', 'onix_meta_box_fields', 'onix_meta_box_tax', 'onix_meta_box');

