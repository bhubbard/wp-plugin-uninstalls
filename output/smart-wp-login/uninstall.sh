#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swpl_settings'
wp option delete 'swpl_version'
wp option delete 'swpl_l'
wp option delete 'swpl_r'
wp option delete 'swpl_rp'

