#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ga_plugin_id_seguimiento'
wp option delete 'ga_plugin_carga_asincrona'
wp option delete 'awe_plugin_id_seguimiento'
wp option delete 'awe_plugin_carga_asincrona'

