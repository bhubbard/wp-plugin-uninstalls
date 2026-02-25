#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifeai_aitranslator_cache_version'
wp option delete 'lifeai_aitranslator_settings'
wp option delete 'lifeai_aitranslator_custom_languages'
wp option delete 'lifeai_aitranslator_version'

# Delete Transients
wp transient delete 'lifeai_aitranslator_admin_notices'

