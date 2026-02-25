-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ebh_settings', 'eboekhouden_username_text', 'eboekhouden_security_code_1_text', 'eboekhouden_security_code_2_text', 'eboekhouden_code_1_text', 'eboekhouden_code_2_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mutation_nr', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('mutation_nr', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('mutation_nr', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mutation_nr', '_product_attributes');

