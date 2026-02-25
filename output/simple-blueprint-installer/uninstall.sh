#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbi_do_activation_redirect'
wp option delete 'sbi_plugins_blueprint'

