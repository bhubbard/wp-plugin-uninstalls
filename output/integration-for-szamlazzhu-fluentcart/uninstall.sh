#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'szamlazz_hu_invoice_type'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_szamlazzhu_%' OR option_name LIKE '_site_transient_szamlazzhu_%'"

