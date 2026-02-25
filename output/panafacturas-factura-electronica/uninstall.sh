#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'GTIPFETitulo_Ajustes_GTI'
wp option delete 'GTIPFENumero_de_Cuenta'
wp option delete 'GTIPFEDecimales'
wp option delete 'GTIPFESufijo'
wp option delete 'GTIPFECodigo_Actividad'
wp option delete 'GTIPFEUsuario'
wp option delete 'GTIPFEClave'
wp option delete 'GTIPFEPunto_Facturacion'
wp option delete 'GTIPFEambiente'
wp option delete 'GTIPFETipoRuc'
wp option delete 'GTIPFERuc'
wp option delete 'GTIPFEDV'
wp option delete 'GTIPFENombEm'
wp option delete 'GTIPFEGTIPFECoordEmLat'
wp option delete 'GTIPFECoordEmLong'
wp option delete 'GTIPFEDirecEm'
wp option delete 'GTIPFECorreg'
wp option delete 'GTIPFEDistr'
wp option delete 'GTIPFEProv'
wp option delete 'GTIPFETfnEm'
wp option delete 'GTIPFECorElectEmi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_send_invoice_pf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_send_invoice_pf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_send_invoice_pf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_send_invoice_pf'"
