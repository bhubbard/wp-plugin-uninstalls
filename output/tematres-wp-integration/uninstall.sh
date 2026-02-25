#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagina_config_tematres_url'
wp option delete 'tematres_tag_name'
wp option delete 'post_types'

