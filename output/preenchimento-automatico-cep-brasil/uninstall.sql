-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pacwp_active', 'pacepbr_class_cep', 'pacepbr_class_logradouro', 'pacepbr_class_numero', 'pacepbr_class_complemento', 'pacepbr_class_bairro', 'pacepbr_class_cidade', 'pacepbr_class_estado');

