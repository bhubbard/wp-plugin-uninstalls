#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'polylang'
wp option delete 'apsfc_force_lang'

# Delete Transients
wp transient delete 'pll_languages_list'

