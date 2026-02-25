#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srel_main'
wp option delete 'srel_options'
wp option delete 'srel_excluded'
wp option delete 'srel_included'

