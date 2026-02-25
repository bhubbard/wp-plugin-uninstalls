#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_tave_version'
wp option delete 'gf_tave_settings'
wp option delete 'gf_taveErrorLog'
wp option delete 'recently_activated'

