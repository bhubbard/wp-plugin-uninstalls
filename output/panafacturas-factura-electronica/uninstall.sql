-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GTIPFETitulo_Ajustes_GTI', 'GTIPFENumero_de_Cuenta', 'GTIPFEDecimales', 'GTIPFESufijo', 'GTIPFECodigo_Actividad', 'GTIPFEUsuario', 'GTIPFEClave', 'GTIPFEPunto_Facturacion', 'GTIPFEambiente', 'GTIPFETipoRuc', 'GTIPFERuc', 'GTIPFEDV', 'GTIPFENombEm', 'GTIPFEGTIPFECoordEmLat', 'GTIPFECoordEmLong', 'GTIPFEDirecEm', 'GTIPFECorreg', 'GTIPFEDistr', 'GTIPFEProv', 'GTIPFETfnEm', 'GTIPFECorElectEmi');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_send_invoice_pf');
DELETE FROM wp_usermeta WHERE meta_key IN ('_send_invoice_pf');
DELETE FROM wp_termmeta WHERE meta_key IN ('_send_invoice_pf');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_send_invoice_pf');

