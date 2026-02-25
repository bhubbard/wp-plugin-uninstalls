#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nacc_theme'
wp option delete 'nacc_language'
wp option delete 'nacc_layout'
wp option delete 'nacc_special'

