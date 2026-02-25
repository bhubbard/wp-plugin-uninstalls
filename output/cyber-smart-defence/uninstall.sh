#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cybersmartdefence_do_activation_redirect'

# Delete Transients
wp transient delete 'cybersmartdefence_table_created'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cybersmartdefence_block_%' OR option_name LIKE '_site_transient_cybersmartdefence_block_%'"

