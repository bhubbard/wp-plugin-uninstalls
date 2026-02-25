#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dynwid_old_method'
wp option delete 'dynwid_page_limit'
wp option delete 'dynwid_version'
wp option delete 'dynwid_housekeeping_lastrun'
wp option delete 'recently_activated'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'qtranslate_default_language'

