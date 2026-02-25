#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'preloader-style'
wp option delete 'preloader-display'
wp option delete '_flat_preloader'

