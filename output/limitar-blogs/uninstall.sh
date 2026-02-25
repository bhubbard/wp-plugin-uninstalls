#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'limitar_blogs_limite'
wp option delete 'limitar_blogs_mensaje_error'
wp option delete 'limitar_blogs_excluir_superadmins'

