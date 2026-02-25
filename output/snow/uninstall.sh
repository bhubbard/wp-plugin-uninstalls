#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snow'
wp option delete 'snowadvanced'
wp option delete 'snowtechnical'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_snow_%' OR option_name LIKE '_site_transient_snow_%'"
wp transient delete 'snow_intro_general'
wp transient delete 'snow_intro_advanced'
wp transient delete 'snow_intro_technical'
wp transient delete 'snow_hello'

