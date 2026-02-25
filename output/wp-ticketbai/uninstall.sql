-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('FTBAI_shownif', 'FTBAI_maxsimplificada', 'FTBAI_clientesRE', 'FTBAI_DNI', 'FTBAI_CLAVE', 'FTBAI_DNI_TEST', 'FTBAI_CLAVE_TEST', 'FTBAI_REG_NOMBRE', 'FTBAI_REG_DNI', 'FTBAI_REG_EMAIL', 'FTBAI_REG_TELEFONO', 'FTBAI_REG_MENSAJE', 'FTBAI_emitefactautomatica', 'FTBAI_sendfactautomatica', 'FTBAI_copyemail', 'FTBAI_apartirnumeropedido', 'FTBAI_posicionQR', 'FTBAI_operacionextranjero', 'FTBAI_causaexentaiva', 'FTBAI_canariasnoexentoiva', 'FTBAI_permitefueraUE', 'FTBAI_empresaroi', 'FTBAI_version', 'FTBAI_NOMBRE', 'FTBAI_EMAIL');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vat_number', 'vat_number', 'billing_nif', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vat_number', 'vat_number', 'billing_nif', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vat_number', 'vat_number', 'billing_nif', '_billing_first_name', '_billing_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vat_number', 'vat_number', 'billing_nif', '_billing_first_name', '_billing_last_name');

