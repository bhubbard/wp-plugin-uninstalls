#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hypeanimations_db_version'

# Delete Transients
wp transient delete 'hype_reload_translations_notice'

