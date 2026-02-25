#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WDNP_WINDDOC_TOKEN'
wp option delete 'WDNP_WINDDOC_NUM_LIST'
wp option delete 'WDNP_WINDDOC_TIPO'
wp option delete 'WDNP_WINDDOC_SHOW_NOME'
wp option delete 'WDNP_WINDDOC_SHOW_COGNOME'
wp option delete 'WDNP_WINDDOC_SHOW_CODICEFISCALE'
wp option delete 'WDNP_WINDDOC_SHOW_NUMEROTESSERA'
wp option delete 'WDNP_WINDDOC_CARIA'
wp option delete 'WDNP_WINDDOC_SHOW_DATA_NASCITA'
wp option delete 'WDNP_WINDDOC_SHOW_TELEFONO'
wp option delete 'winddocnoprofit_db_version'
wp option delete 'WD_WINDDOC_TOKEN'

