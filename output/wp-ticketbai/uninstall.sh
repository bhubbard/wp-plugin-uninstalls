#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FTBAI_shownif'
wp option delete 'FTBAI_maxsimplificada'
wp option delete 'FTBAI_clientesRE'
wp option delete 'FTBAI_DNI'
wp option delete 'FTBAI_CLAVE'
wp option delete 'FTBAI_DNI_TEST'
wp option delete 'FTBAI_CLAVE_TEST'
wp option delete 'FTBAI_REG_NOMBRE'
wp option delete 'FTBAI_REG_DNI'
wp option delete 'FTBAI_REG_EMAIL'
wp option delete 'FTBAI_REG_TELEFONO'
wp option delete 'FTBAI_REG_MENSAJE'
wp option delete 'FTBAI_emitefactautomatica'
wp option delete 'FTBAI_sendfactautomatica'
wp option delete 'FTBAI_copyemail'
wp option delete 'FTBAI_apartirnumeropedido'
wp option delete 'FTBAI_posicionQR'
wp option delete 'FTBAI_operacionextranjero'
wp option delete 'FTBAI_causaexentaiva'
wp option delete 'FTBAI_canariasnoexentoiva'
wp option delete 'FTBAI_permitefueraUE'
wp option delete 'FTBAI_empresaroi'
wp option delete 'FTBAI_version'
wp option delete 'FTBAI_NOMBRE'
wp option delete 'FTBAI_EMAIL'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
