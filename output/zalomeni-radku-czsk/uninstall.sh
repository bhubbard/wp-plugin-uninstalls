#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zalomeni_czsk_settings'
wp option delete 'zalomeni_settings'
wp option delete 'zalomeni_version'
wp option delete 'zalomeni_matches'
wp option delete 'zalomeni_replacements'

