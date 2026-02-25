#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zeleri_id_imagen_logo'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

