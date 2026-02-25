#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mrt_usar_archivo'
wp option delete 'wpseo'
wp option delete 'mrt_version'
wp option delete 'mrt_avanzado'
wp option delete 'mrt_buscadores'
wp option delete 'mrt_carga'
wp option delete 'mrt_ahorro'
wp option delete 'mrt_venta_publicidad'
wp option delete 'mrt_venta_enlaces'

# Delete Transients
wp transient delete 'mrt_settings_updated'

