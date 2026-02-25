#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mir_shortcodes'
wp option delete 'mir_shortcodes_cpt'
wp option delete 'mir_shortcodes_tax'

