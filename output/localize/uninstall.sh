#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'localize_lang'
wp option delete 'localize_lang_version'

# Delete Transients
wp transient delete 'localize_versions'
wp transient delete 'localize_locale_data'

