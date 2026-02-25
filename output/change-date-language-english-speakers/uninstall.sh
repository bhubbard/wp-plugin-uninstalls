#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mesi_int'
wp option delete 'mesi_slug'
wp option delete 'giorni_int'
wp option delete 'giorni_slug'

