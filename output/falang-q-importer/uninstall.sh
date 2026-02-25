#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qtranslate_default_language'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'qtranslate_term_name'

