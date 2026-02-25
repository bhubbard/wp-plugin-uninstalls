#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmultilingial_settings'
wp option delete 'poliglot_install'
wp option delete 'update_core'

