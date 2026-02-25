#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ogulo_provider'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ogulo_access_redirection_%' OR option_name LIKE '_site_transient_ogulo_access_redirection_%'"
wp transient delete 'Ogulo_flush'

